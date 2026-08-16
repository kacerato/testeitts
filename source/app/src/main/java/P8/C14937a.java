package p8;

import JAVARuntime.FilesPanelCustomIcon;
import android.widget.ImageView;
import d8.m;
import java.io.File;
import o8.InterfaceC14490d;

public class C14937a extends w5.f {

    public final FilesPanelCustomIcon f103647a;

    public class C1944a implements InterfaceC14490d {

        public final File[] f103648a;

        public final File f103649b;

        public C1944a(final File[] val$icon, final File val$file) {
            this.f103648a = val$icon;
            this.f103649b = val$file;
        }

        @Override
        public void run() {
            this.f103648a[0] = C14937a.this.f103647a.getIconForFile(new JAVARuntime.File(this.f103649b.getAbsolutePath(), true));
        }
    }

    public class b implements InterfaceC14490d {

        public final boolean[] f103651a;

        public final File f103652b;

        public final ImageView f103653c;

        public b(final boolean[] val$icon, final File val$file, final ImageView val$imageView) {
            this.f103651a = val$icon;
            this.f103652b = val$file;
            this.f103653c = val$imageView;
        }

        @Override
        public void run() {
            this.f103651a[0] = C14937a.this.f103647a.applyIcon(new JAVARuntime.File(this.f103652b.getAbsolutePath(), true), this.f103653c);
        }
    }

    public class c implements InterfaceC14490d {

        public final boolean[] f103655a;

        public final File f103656b;

        public c(final boolean[] val$result, final File val$file) {
            this.f103655a = val$result;
            this.f103656b = val$file;
        }

        @Override
        public void run() {
            this.f103655a[0] = C14937a.this.f103647a.supportFile(new JAVARuntime.File(this.f103656b.getAbsolutePath(), true));
        }
    }

    public C14937a(FilesPanelCustomIcon runtime) {
        this.f103647a = runtime;
    }

    @Override
    public boolean a(File file, ImageView imageView) {
        boolean[] zArr = {false};
        m.d(new b(zArr, file, imageView));
        return zArr[0];
    }

    @Override
    public File b(File file) {
        File[] fileArr = {null};
        m.d(new C1944a(fileArr, file));
        return fileArr[0];
    }

    @Override
    public boolean c(File file) {
        boolean[] zArr = {false};
        m.d(new c(zArr, file));
        return zArr[0];
    }
}
