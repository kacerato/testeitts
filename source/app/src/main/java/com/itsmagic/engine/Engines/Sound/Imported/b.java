package com.itsmagic.engine.Engines.Sound.Imported;

import Ic.C2633l;
import android.content.Context;
import java.io.File;
import java.io.FileNotFoundException;

public final class b {

    public final String f81440a;

    public final File f81441b;

    public final File f81442c;

    public final boolean f81443d;

    public b(String logicalPath, File sourceFile, File importedFile, boolean directImported) {
        this.f81440a = logicalPath;
        this.f81441b = sourceFile;
        this.f81442c = importedFile;
        this.f81443d = directImported;
    }

    public static boolean e(String logicalPath) {
        if (logicalPath.startsWith("@@ASSET@@")) {
            return true;
        }
        Context t10 = N7.c.t();
        return (t10 == null || com.itsmagic.engine.Core.Components.ProjectController.a.S(t10) == null || !com.itsmagic.engine.Core.Components.ProjectController.a.S(t10).startsWith("@@ASSET@@")) ? false : true;
    }

    public static b g(File ioFile) throws FileNotFoundException {
        if (ioFile == null || !ioFile.exists()) {
            throw new FileNotFoundException("Audio file doesn't exist");
        }
        if (C2633l.b(ioFile.getName(), ".sound")) {
            return new b(ioFile.getAbsolutePath(), ioFile, ioFile, true);
        }
        return new b(ioFile.getAbsolutePath(), ioFile, new File(Tc.b.O(ioFile.getAbsolutePath()) + ".sound"), false);
    }

    public static b h(String logicalPath) throws FileNotFoundException {
        File k10;
        if (logicalPath == null || logicalPath.trim().isEmpty()) {
            throw new FileNotFoundException("Audio path can't be empty");
        }
        String trim = logicalPath.trim();
        if (C2633l.b(trim, ".sound")) {
            File i10 = i(trim);
            if (i10.exists()) {
                return new b(trim, i10, i10, true);
            }
            throw new FileNotFoundException("Imported audio doesn't exist: " + trim);
        }
        if (e(trim) && (k10 = k(trim)) != null && k10.exists()) {
            return new b(trim, k10, k10, true);
        }
        File i11 = i(trim);
        if (i11.exists()) {
            return new b(trim, i11, new File(Tc.b.O(i11.getAbsolutePath()) + ".sound"), false);
        }
        throw new FileNotFoundException("Audio file doesn't exist: " + trim);
    }

    public static File i(String logicalPath) throws FileNotFoundException {
        if (e(logicalPath)) {
            File a10 = Hc.a.a(j(logicalPath));
            if (a10 != null) {
                return a10;
            }
            throw new FileNotFoundException("Asset audio doesn't exist: " + logicalPath);
        }
        String R10 = com.itsmagic.engine.Core.Components.ProjectController.a.R();
        if (R10 == null || R10.isEmpty()) {
            return null;
        }
        return new File(Tc.b.o(R10 + "/" + logicalPath));
    }

    public static String j(String logicalPath) {
        if (!logicalPath.startsWith("@@ASSET@@")) {
            logicalPath = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + logicalPath;
        }
        String o10 = Tc.b.o(logicalPath);
        if (o10.startsWith("@@ASSET@@")) {
            return o10;
        }
        return "@@ASSET@@" + o10;
    }

    public static File k(String logicalPath) {
        try {
            return Hc.a.b(j(logicalPath));
        } catch (Exception unused) {
            return null;
        }
    }

    public String a() {
        return this.f81442c.getAbsolutePath();
    }

    public File b() {
        return this.f81442c;
    }

    public String c() {
        return this.f81440a;
    }

    public File d() {
        return this.f81441b;
    }

    public boolean f() {
        return this.f81443d;
    }
}
