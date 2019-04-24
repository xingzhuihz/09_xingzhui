package work.login.domain;

public class Category {
    private int id;
    private String title;
    private String a;

    public Category(int id, String title, String a) {
        this.id = id;
        this.title = title;
        this.a = a;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", a='" + a + '\'' +
                '}';
    }

    public Category() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }
}
