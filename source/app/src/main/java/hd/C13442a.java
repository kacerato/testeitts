package hd;

public class C13442a {

    public String f90488a;

    public String f90489b;

    public u8.d f90490c;

    public C13442a(String file, String url, String[] params, u8.d serviceListener) {
        this.f90488a = file;
        this.f90489b = a(url, params);
        this.f90490c = serviceListener;
    }

    public final String a(String url, String[] params) {
        for (int i10 = 0; i10 < params.length; i10++) {
            if (i10 == 0) {
                url = url + "?";
            }
            if (i10 > 0) {
                url = url + "&";
            }
            url = url + params[i10];
        }
        return url;
    }
}
