package android.graphics.pdf;

import android.graphics.Canvas;
import android.graphics.Rect;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/pdf/PdfDocument.class
 */
public class PdfDocument {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/pdf/PdfDocument$PageInfo.class
 */
    public static final class PageInfo {

        /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/pdf/PdfDocument$PageInfo$Builder.class
 */
        public static final class Builder {
            public Builder(int pageWidth, int pageHeight, int pageNumber) {
                throw new RuntimeException("Stub!");
            }

            public Builder setContentRect(Rect contentRect) {
                throw new RuntimeException("Stub!");
            }

            public PageInfo create() {
                throw new RuntimeException("Stub!");
            }
        }

        PageInfo() {
            throw new RuntimeException("Stub!");
        }

        public int getPageWidth() {
            throw new RuntimeException("Stub!");
        }

        public int getPageHeight() {
            throw new RuntimeException("Stub!");
        }

        public Rect getContentRect() {
            throw new RuntimeException("Stub!");
        }

        public int getPageNumber() {
            throw new RuntimeException("Stub!");
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/graphics/pdf/PdfDocument$Page.class
 */
    public static final class Page {
        Page() {
            throw new RuntimeException("Stub!");
        }

        public Canvas getCanvas() {
            throw new RuntimeException("Stub!");
        }

        public PageInfo getInfo() {
            throw new RuntimeException("Stub!");
        }
    }

    public PdfDocument() {
        throw new RuntimeException("Stub!");
    }

    public Page startPage(PageInfo pageInfo) {
        throw new RuntimeException("Stub!");
    }

    public void finishPage(Page page) {
        throw new RuntimeException("Stub!");
    }

    public void writeTo(OutputStream out) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public List<PageInfo> getPages() {
        throw new RuntimeException("Stub!");
    }

    public void close() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }
}
