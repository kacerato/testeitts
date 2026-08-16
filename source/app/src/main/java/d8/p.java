package d8;

import G8.a;

public class p {

    public String f84447a;

    public String f84448b;

    public G8.a f84449c;

    public p(String name, String ipp) {
        this.f84447a = name;
        this.f84448b = ipp;
    }

    public G8.a a() {
        G8.a aVar = this.f84449c;
        if (aVar != null) {
            return aVar;
        }
        if (this.f84447a.contains("/")) {
            String[] split = this.f84447a.split("/");
            int i10 = 0;
            if (split.length >= 3) {
                G8.a aVar2 = null;
                while (i10 < split.length - 1) {
                    G8.a aVar3 = new G8.a(a.EnumC0148a.Folder, split[i10]);
                    if (this.f84449c == null) {
                        this.f84449c = aVar3;
                    } else if (aVar2 != null) {
                        aVar2.a(aVar3);
                    }
                    i10++;
                    aVar2 = aVar3;
                }
                aVar2.a(new G8.a(a.EnumC0148a.Shader, split[split.length - 1]));
            } else {
                if (split.length == 2) {
                    G8.a aVar4 = new G8.a(a.EnumC0148a.Folder, split[0]);
                    this.f84449c = aVar4;
                    aVar4.a(new G8.a(a.EnumC0148a.Shader, split[1]));
                    return this.f84449c;
                }
                if (split.length == 1) {
                    this.f84449c = new G8.a(a.EnumC0148a.Shader, split[0]);
                } else {
                    System.out.println("Missing material shader name");
                }
            }
        } else {
            this.f84449c = new G8.a(a.EnumC0148a.Shader, this.f84447a);
        }
        return this.f84449c;
    }
}
