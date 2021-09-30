using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace KioskoUniversidadSalvatore
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void IniciarSesion_Click(object sender, EventArgs e)
        {

            // Login: Inicio de sesion. Comienza haciendo un Query a la base de datos con en par Email Contraseña,
            // Si encuentra un par valido, utiliza la tabla para asignar el Email y Nivel de Acceso a sus Variables de Sesion.

            DataTable loginDataTable = ObtenerDataTableLogin(EmailUsuarioTxb.Text, ContrasenaTxb.Text);

            if (loginDataTable.Rows.Count > 0){

                DataRow filaDataRow = loginDataTable.Rows[0];

                Session["EmailUsuario"] = EmailUsuarioTxb.Text;
                Session["NivelDeAcceso"] = filaDataRow["NivelDeAcceso"];

                Response.Redirect("Landing.aspx");
                Session.RemoveAll();

            } else
            {
                LitMsg.Text = "Email o Contraseña Incorrectas";
            }    
            
        }

        protected DataTable ObtenerDataTableLogin(string Matricula, string Contrasena)
        {
            string ConexionPrincipal = ConfigurationManager.ConnectionStrings["AplicacionBaseSQL"].ConnectionString;
            SqlConnection ConexionSQL = new SqlConnection(ConexionPrincipal);
            SqlCommand ComandoSQL = new SqlCommand("SELECT * FROM [dbo].[Usuarios] WHERE Email = @Email AND Contraseña = @Contraseña", ConexionSQL);
            ComandoSQL.Parameters.AddWithValue("Email", EmailUsuarioTxb.Text);
            ComandoSQL.Parameters.AddWithValue("Contraseña", Contrasena);

            var DataTableLogin = new DataTable();
            var AdaptadorSQL = new SqlDataAdapter(ComandoSQL);

            try
            {

                AdaptadorSQL.Fill(DataTableLogin);
                return DataTableLogin;
            }
            catch (Exception Ex)
            {
                Console.WriteLine("Excepcion Atrapada: " + Ex.Message);
                return new DataTable();
                throw;
            }
        }

    }

    
}

