using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeatureLayer;
using BusinessLayer;
using System.Data;


namespace MainProject
{
    public partial class Restaurants : System.Web.UI.Page
    {
        BLRestaurant process = new BLRestaurant();
        FLRestaurant data = new FLRestaurant();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            DataSet info = new DataSet();

            data.RestaurantID = Convert.ToInt32(txtRestaurantID.Text);

            info = process.showRestaurant(data);

            if (info.Tables[0].Rows.Count == 0)
            {
                lblResult.Text = "No restaurant to show";
            }
            else
            {
                txtRestaurantName.Text = info.Tables[0].Rows[0]["restaurantName"].ToString();
                txtRestaurantAddress.Text = info.Tables[0].Rows[0]["restaurantAddress"].ToString();
                txtRestaurantPhone.Text = info.Tables[0].Rows[0]["restaurantPhone"].ToString();
                txtRestaurantType.Text = info.Tables[0].Rows[0]["restaurantType"].ToString();
                txtRestaurantPrice.Text = info.Tables[0].Rows[0]["restaurantPrice"].ToString();
                lblRestaurantActive.Text = info.Tables[0].Rows[0]["active"].ToString();

                lblResult.Text = "Success showing the restaurant";
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            data.RestaurantID = Convert.ToInt32(txtRestaurantID.Text);
            data.RestaurantName = txtRestaurantName.Text;
            data.RestaurantAddress = txtRestaurantAddress.Text;
            data.RestaurantPhone= txtRestaurantPhone.Text;
            data.RestaurantType= txtRestaurantType.Text;
            data.RestaurantPrice = Convert.ToInt32(txtRestaurantPrice.Text);
            data.Active = 1;

            if (process.addRestaurant(data))
            {
                lblResult.Text = "Success adding the restaurant";

                txtRestaurantName.Text = "";
                txtRestaurantAddress.Text = "";
                txtRestaurantPhone.Text = "";
                txtRestaurantType.Text = "";
                txtRestaurantPrice.Text = "";
                lblRestaurantActive.Text = "";
            }
            else
            {
                lblResult.Text = "Error adding the restaurant";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            data.RestaurantID = Convert.ToInt32(txtRestaurantID.Text);
            data.RestaurantName = txtRestaurantName.Text;
            data.RestaurantAddress = txtRestaurantAddress.Text;
            data.RestaurantPhone = txtRestaurantPhone.Text;
            data.RestaurantType = txtRestaurantType.Text;
            data.RestaurantPrice = Convert.ToInt32(txtRestaurantPrice.Text);
            data.Active = 1;

            if (process.updateRestaurant(data))
            {
                lblResult.Text = "Success updating the restaurant";

                txtRestaurantID.Text = "";
                txtRestaurantName.Text = "";
                txtRestaurantAddress.Text = "";
                txtRestaurantPhone.Text = "";
                txtRestaurantType.Text = "";
                txtRestaurantPrice.Text = "";
                lblRestaurantActive.Text = "";
            }
            else
            {
                lblResult.Text = "Error updating the restaurant";
            }
        }

        protected void btnDeactivate_Click(object sender, EventArgs e)
        {
            data.RestaurantID = Convert.ToInt32(txtRestaurantID.Text);

            if (process.deactivateRestaurant(data))
            {
                lblResult.Text = "Success deactivating the restaurant";

                txtRestaurantID.Text = "";
                txtRestaurantName.Text = "";
                txtRestaurantAddress.Text = "";
                txtRestaurantPhone.Text = "";
                txtRestaurantType.Text = "";
                txtRestaurantPrice.Text = "";
                lblRestaurantActive.Text = "";
            }
            else
            {
                lblResult.Text = "Error deactivating the restaurant";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            data.RestaurantID = Convert.ToInt32(txtRestaurantID.Text);

            if (process.deleteRestaurant(data))
            {
                lblResult.Text = "Success deleting the restaurant";

                txtRestaurantID.Text = "";
                txtRestaurantName.Text = "";
                txtRestaurantAddress.Text = "";
                txtRestaurantPhone.Text = "";
                txtRestaurantType.Text = "";
                txtRestaurantPrice.Text = "";
                lblRestaurantActive.Text = "";
            }
            else
            {
                lblResult.Text = "Error deleting the restaurant";
            }
        }
    }
}