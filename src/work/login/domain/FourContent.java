package work.login.domain;

public class FourContent {
    private int id;
    private String h1;
    private String span;
    private String img;
    private String p;
    private String uploadtime;
    private String a;

    @Override
    public String toString() {
        return "FourContentDao{" +
                "id=" + id +
                ", h1='" + h1 + '\'' +
                ", span='" + span + '\'' +
                ", img='" + img + '\'' +
                ", p='" + p + '\'' +
                ", uploadtime='" + uploadtime + '\'' +
                ", a='" + a + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getH1() {
        return h1;
    }

    public void setH1(String h1) {
        this.h1 = h1;
    }

    public String getSpan() {
        return span;
    }

    public void setSpan(String span) {
        this.span = span;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getP() {
        return p;
    }

    public void setP(String p) {
        this.p = p;
    }

    public String getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(String uploadtime) {
        this.uploadtime = uploadtime;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public FourContent() {
    }

    public FourContent(int id, String h1, String span, String img, String p, String uploadtime, String a) {
        this.id = id;
        this.h1 = h1;
        this.span = span;
        this.img = img;
        this.p = p;
        this.uploadtime = uploadtime;
        this.a = a;
    }
}
