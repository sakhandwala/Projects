package pract;

import javax.faces.context.FacesContext;

public class Logout {

	public String logout() {
        FacesContext.getCurrentInstance().getExternalContext().invalidateSession();
        return "Logout";
    }
}
