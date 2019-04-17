package work.login.domain;

public class Category {
    private int id;
    private String title;

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", title='" + title + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String gettitle() {
        return title;
    }

    public void settitle(String title) {
        this.title = title;
    }

    public Category(int id, String title) {
        this.id = id;
        this.title = title;
    }

    public Category() {
    }
}
