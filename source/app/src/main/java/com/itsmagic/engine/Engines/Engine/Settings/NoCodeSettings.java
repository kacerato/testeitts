package com.itsmagic.engine.Engines.Engine.Settings;

import Ic.C2629h;
import Ic.C2632k;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDicFile;
import com.itsmagic.engine.Core.Components.PackageBuilder.BuilderUtils.BuildDictionary;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeAttribute;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;

public class NoCodeSettings {

    @Expose
    public List<NoCodeAttribute> globalAttributes = new SteppedArrayList();

    public NoCodeAttribute a(String id2) {
        if (id2 == null) {
            return null;
        }
        for (NoCodeAttribute noCodeAttribute : d()) {
            if (noCodeAttribute != null && id2.equals(noCodeAttribute.f78942id)) {
                return noCodeAttribute;
            }
        }
        return null;
    }

    public NoCodeAttribute b(String name) {
        if (name == null) {
            return null;
        }
        for (NoCodeAttribute noCodeAttribute : d()) {
            if (noCodeAttribute != null && name.equals(noCodeAttribute.name)) {
                return noCodeAttribute;
            }
        }
        return null;
    }

    public C2632k c(C2629h dependencyRequest) {
        C2632k c2632k = new C2632k();
        for (int i10 = 0; i10 < this.globalAttributes.size(); i10++) {
            NoCodeAttribute noCodeAttribute = this.globalAttributes.get(i10);
            String str = noCodeAttribute.file;
            if (str != null && !str.isEmpty() && !noCodeAttribute.file.startsWith("@@ASSET@@")) {
                c2632k.f9114a.add(noCodeAttribute.file);
            }
        }
        return c2632k;
    }

    public List<NoCodeAttribute> d() {
        if (this.globalAttributes == null) {
            this.globalAttributes = new SteppedArrayList();
        }
        for (NoCodeAttribute noCodeAttribute : this.globalAttributes) {
            if (noCodeAttribute != null) {
                noCodeAttribute.e();
                noCodeAttribute.visible = false;
            }
        }
        return this.globalAttributes;
    }

    public void e(BuildDictionary dictionary) {
        BuildDicFile f10;
        for (int i10 = 0; i10 < this.globalAttributes.size(); i10++) {
            NoCodeAttribute noCodeAttribute = this.globalAttributes.get(i10);
            String str = noCodeAttribute.file;
            if (str != null && !str.isEmpty() && !noCodeAttribute.file.startsWith("@@ASSET@@") && (f10 = dictionary.f(noCodeAttribute.file)) != null) {
                dictionary.h("NoCode: REPLACING " + noCodeAttribute.file + " TO " + f10.b());
                noCodeAttribute.file = f10.b();
            }
        }
    }
}
