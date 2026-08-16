package com.android.tools.r8;

import com.android.apksig.apk.ApkUtils;
import com.android.tools.r8.AndroidResourceInput;
import com.android.tools.r8.internal.AbstractC6706c8;
import com.android.tools.r8.internal.C6169Ww;
import com.android.tools.r8.origin.ArchiveEntryOrigin;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.origin.PathOrigin;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ArchiveProtoAndroidResourceProvider implements AndroidResourceProvider {

    private final Path f35122a;

    private final Origin f35123b;

    public ArchiveProtoAndroidResourceProvider(Path path, Origin origin) {
        this.f35122a = path;
        this.f35123b = origin;
    }

    @Override
    public void finished(DiagnosticsHandler diagnosticsHandler) {
        super.finished(diagnosticsHandler);
    }

    @Override
    public Collection<AndroidResourceInput> getAndroidResources() throws ResourceException {
        try {
            ZipFile a10 = C6169Ww.a(this.f35122a.toFile(), StandardCharsets.UTF_8);
            try {
                ArrayList arrayList = new ArrayList();
                Enumeration<? extends ZipEntry> entries = a10.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    String name = nextElement.getName();
                    AndroidResourceInput.Kind kind = name.equals(ApkUtils.ANDROID_MANIFEST_ZIP_ENTRY_NAME) ? AndroidResourceInput.Kind.MANIFEST : name.equals("resources.pb") ? AndroidResourceInput.Kind.RESOURCE_TABLE : !name.startsWith("res/") ? AndroidResourceInput.Kind.UNKNOWN : name.endsWith(".xml") ? AndroidResourceInput.Kind.XML_FILE : AndroidResourceInput.Kind.RES_FOLDER_FILE;
                    arrayList.add(new C4286b(name, kind, AbstractC6706c8.a(a10.getInputStream(nextElement)), new ArchiveEntryOrigin(name, this.f35123b)));
                    if (kind == AndroidResourceInput.Kind.XML_FILE && name.startsWith("res/raw/")) {
                        arrayList.add(new C4286b(name, AndroidResourceInput.Kind.KEEP_RULE_FILE, AbstractC6706c8.a(a10.getInputStream(nextElement)), new ArchiveEntryOrigin(name, this.f35123b)));
                    }
                }
                a10.close();
                return arrayList;
            } finally {
            }
        } catch (IOException e10) {
            throw new ResourceException(this.f35123b, e10);
        }
    }

    public ArchiveProtoAndroidResourceProvider(Path path) {
        this(path, new PathOrigin(path));
    }
}
