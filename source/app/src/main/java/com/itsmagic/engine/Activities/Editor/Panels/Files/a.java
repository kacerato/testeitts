package com.itsmagic.engine.Activities.Editor.Panels.Files;

import Ic.C2633l;
import j7.b;
import j7.e;
import j7.f;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.Iterator;
import n7.InterfaceC14359d;
import w5.m;

public class a {

    public static class C1135a implements InterfaceC14359d {

        public PFSettings f71721a;

        @Override
        public boolean a(File file) {
            PFSettings pFSettings = this.f71721a;
            return pFSettings != null ? a.b(file, pFSettings) : a.b(file, new PFSettings());
        }

        public void b(PFSettings pfSettings) {
            this.f71721a = pfSettings;
        }
    }

    public static boolean a(b eElement, PFSettings pfSettings) {
        if (eElement instanceof f) {
            f fVar = (f) eElement;
            if (pfSettings.showHide) {
                return true;
            }
            String v10 = Tc.b.v(fVar.f6679a);
            if (fVar.f6679a.equals(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/JAVARuntime") || v10.startsWith(ConstantDescs.DEFAULT_NAME)) {
                return false;
            }
            String t10 = Tc.b.t(fVar.f6679a);
            Iterator<String> it = m.b().iterator();
            while (it.hasNext()) {
                if (C2633l.b(t10, it.next())) {
                    return false;
                }
            }
            Iterator<String> it2 = m.a().iterator();
            while (it2.hasNext()) {
                if (C2633l.b(t10, it2.next())) {
                    return false;
                }
            }
            return true;
        }
        if (!(eElement instanceof e)) {
            return false;
        }
        e eVar = (e) eElement;
        if (pfSettings.showHide) {
            String t11 = Tc.b.t(eVar.f6679a);
            Iterator<String> it3 = m.a().iterator();
            while (it3.hasNext()) {
                if (C2633l.b(t11, it3.next())) {
                    return false;
                }
            }
            return true;
        }
        if (Tc.b.v(eVar.f6679a).startsWith(ConstantDescs.DEFAULT_NAME)) {
            return false;
        }
        String t12 = Tc.b.t(eVar.f6679a);
        Iterator<String> it4 = m.b().iterator();
        while (it4.hasNext()) {
            if (C2633l.b(t12, it4.next())) {
                return false;
            }
        }
        Iterator<String> it5 = m.a().iterator();
        while (it5.hasNext()) {
            if (C2633l.b(t12, it5.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(File file, PFSettings pfSettings) {
        if (file.isDirectory()) {
            if (pfSettings.showHide) {
                return true;
            }
            String absolutePath = file.getAbsolutePath();
            String v10 = Tc.b.v(absolutePath);
            if (absolutePath.equals(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/JAVARuntime") || v10.startsWith(ConstantDescs.DEFAULT_NAME)) {
                return false;
            }
            String t10 = Tc.b.t(file.getAbsolutePath());
            Iterator<String> it = m.b().iterator();
            while (it.hasNext()) {
                if (C2633l.b(t10, it.next())) {
                    return false;
                }
            }
            Iterator<String> it2 = m.a().iterator();
            while (it2.hasNext()) {
                if (C2633l.b(t10, it2.next())) {
                    return false;
                }
            }
            return true;
        }
        if (file.getAbsolutePath().equals(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/javaRTImportPack.zip")) {
            return false;
        }
        if (pfSettings.showHide) {
            String t11 = Tc.b.t(file.getAbsolutePath());
            Iterator<String> it3 = m.a().iterator();
            while (it3.hasNext()) {
                if (C2633l.b(t11, it3.next())) {
                    return false;
                }
            }
            return true;
        }
        if (Tc.b.v(file.getAbsolutePath()).startsWith(ConstantDescs.DEFAULT_NAME)) {
            return false;
        }
        String t12 = Tc.b.t(file.getAbsolutePath());
        Iterator<String> it4 = m.b().iterator();
        while (it4.hasNext()) {
            if (C2633l.b(t12, it4.next())) {
                return false;
            }
        }
        Iterator<String> it5 = m.a().iterator();
        while (it5.hasNext()) {
            if (C2633l.b(t12, it5.next())) {
                return false;
            }
        }
        return true;
    }
}
