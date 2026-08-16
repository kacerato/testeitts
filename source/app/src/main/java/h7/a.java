package H7;

import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;

public class a {

    public static final int f8265e = 0;

    public static final int f8266f = 1;

    public static final int f8267g = 2;

    public Product f8268a;

    public Package f8269b;

    public S5.a f8270c;

    public int f8271d;

    public a(Product product) {
        this.f8268a = product;
        this.f8269b = null;
        this.f8270c = null;
        this.f8271d = 0;
    }

    public S5.a a() {
        return this.f8270c;
    }

    public Package b() {
        return this.f8269b;
    }

    public Product c() {
        return this.f8268a;
    }

    public int d() {
        return this.f8271d;
    }

    public a(Package v2Package) {
        this.f8268a = null;
        this.f8269b = v2Package;
        this.f8270c = null;
        this.f8271d = 0;
    }

    public a(S5.a announcement) {
        this.f8270c = announcement;
        this.f8268a = null;
        this.f8269b = null;
        this.f8271d = 1;
    }

    public a(int type) {
        this.f8270c = null;
        this.f8268a = null;
        this.f8269b = null;
        this.f8271d = type;
    }

    public a() {
        this.f8270c = null;
        this.f8268a = null;
        this.f8269b = null;
        this.f8271d = 2;
    }
}
