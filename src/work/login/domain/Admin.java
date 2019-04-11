package work.login.domain;

public class Admin {
    private Integer id;
    private String name;
    private String password;
    private Integer limits;

    public Admin() {
    }

    public Admin(Integer id, String name, String password, Integer limits) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.limits = limits;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getLimits() {
        return limits;
    }

    public void setLimits(Integer limits) {
        this.limits = limits;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", limits=" + limits +
                '}';
    }
}
