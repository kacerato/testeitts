package JAVARuntime;

import C5.b;
import D5.h;
import P8.i;
import P8.k;
import P8.m;
import P8.n;
import P8.q;
import android.content.Context;
import android.graphics.Bitmap;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Utils.Variable;
import d8.j;
import java.io.InputStream;
import java.lang.reflect.Field;
import o8.InterfaceC14490d;
import ub.g;
import ub.p;
import yb.C16165b;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Texture.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Texture.class
  classes.dex
 */
@ClassCategory(cat = {"Material"})
public final class Texture {

    public class AnonymousClass1 implements m {
        final Class val$thisClass;

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public Class getCls() {
            return this.val$thisClass;
        }

        @Override
        public String getFullName() {
            return this.val$thisClass.getName();
        }

        @Override
        public C5.b getInspector(Context context, final k constructor, String tittle, q userPointer) {
            final Texture texture = (Texture) constructor.getValue();
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    Texture texture2 = texture;
                    if (texture2 != null) {
                        p pVar = texture2.instance;
                        if (pVar instanceof g) {
                            return new Variable("", ((g) pVar).getFile());
                        }
                    }
                    return new Variable("", "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        String str = variable.str_value;
                        if (str == null || str.isEmpty()) {
                            constructor.setValue(null);
                            return;
                        }
                        try {
                            g u10 = C16165b.u(variable.str_value);
                            constructor.setValue(u10 != null ? u10.p0() : null);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            constructor.setValue(null);
                        }
                    }
                }
            }, tittle, b.a.Texture, context);
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Texture(null);
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String str;
            g u10;
            if (variable.type != Variable.a.InspectorString || (str = variable.str_value) == null || str.isEmpty() || (u10 = C16165b.u(variable.str_value)) == null) {
                return null;
            }
            return u10.p0();
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            p pVar;
            Texture texture = (Texture) value;
            return (texture == null || (pVar = texture.instance) == null || !(pVar instanceof g)) ? new Variable(fieldName, "", Variable.a.InspectorString) : new Variable(fieldName, ((g) pVar).getFile(), Variable.a.InspectorString);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, final Field field, final Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            Texture texture;
            try {
                texture = (Texture) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                texture = null;
            }
            final Texture texture2 = texture;
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    Texture texture3 = texture2;
                    if (texture3 != null) {
                        p pVar = texture3.instance;
                        if (pVar instanceof g) {
                            return new Variable("", ((g) pVar).getFile());
                        }
                    }
                    return new Variable("", "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        try {
                            String str = variable.str_value;
                            if (str == null || str.isEmpty()) {
                                field.set(classInstance, null);
                                n nVar = getSetterListener;
                                if (nVar != null) {
                                    nVar.a(null);
                                    return;
                                }
                                return;
                            }
                            try {
                                g u10 = C16165b.u(variable.str_value);
                                Texture p02 = u10 != null ? u10.p0() : null;
                                field.set(classInstance, p02);
                                n nVar2 = getSetterListener;
                                if (nVar2 != null) {
                                    nVar2.a(p02);
                                }
                            } catch (Exception e11) {
                                e11.printStackTrace();
                                field.set(classInstance, null);
                                n nVar3 = getSetterListener;
                                if (nVar3 != null) {
                                    nVar3.a(null);
                                }
                            }
                        } catch (IllegalAccessException e12) {
                            e12.printStackTrace();
                        }
                    }
                }
            }, field.getName(), b.a.Texture, context);
        }

        @Override
        public C5.b getInspectorForArray(Context context, final Object[] array, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            final Texture texture = (Texture) array[position];
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    Texture texture2 = texture;
                    if (texture2 != null) {
                        p pVar = texture2.instance;
                        if (pVar instanceof g) {
                            return new Variable("", ((g) pVar).getFile());
                        }
                    }
                    return new Variable("", "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        String str = variable.str_value;
                        if (str == null || str.isEmpty()) {
                            array[position] = null;
                            n nVar = getSetterListener;
                            if (nVar != null) {
                                nVar.a(null);
                                return;
                            }
                            return;
                        }
                        Texture texture2 = new Texture(new g(variable.str_value));
                        array[position] = texture2;
                        n nVar2 = getSetterListener;
                        if (nVar2 != null) {
                            nVar2.a(texture2);
                        }
                    }
                }
            }, tittle, b.a.Texture, context);
        }

        @Override
        public C5.b getInspectorForList(Context context, final d8.h list, final int position, Object classInstance, String tittle, final n getSetterListener, q userPointer) {
            final Texture texture = (Texture) list.a(position);
            return new C5.b(new h() {
                @Override
                public Variable get() {
                    Texture texture2 = texture;
                    if (texture2 != null) {
                        p pVar = texture2.instance;
                        if (pVar instanceof g) {
                            return new Variable("", ((g) pVar).getFile());
                        }
                    }
                    return new Variable("", "");
                }

                @Override
                public void set(Variable variable) {
                    if (variable != null) {
                        String str = variable.str_value;
                        if (str == null || str.isEmpty()) {
                            list.b(position, null);
                            n nVar = getSetterListener;
                            if (nVar != null) {
                                nVar.a(null);
                                return;
                            }
                            return;
                        }
                        Texture texture2 = new Texture(new g(variable.str_value));
                        list.b(position, texture2);
                        n nVar2 = getSetterListener;
                        if (nVar2 != null) {
                            nVar2.a(texture2);
                        }
                    }
                }
            }, tittle, b.a.Texture, context);
        }

        @Override
        public String getSimpleName(q userPointer) {
            return this.val$thisClass.getSimpleName();
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public boolean match(String className, q userPointer) {
            return j.y(this.val$thisClass.getName()).equals(j.y(className));
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Texture(null);
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String str;
            g i10;
            if (variable.type != Variable.a.InspectorString || (str = variable.str_value) == null || str.isEmpty() || (i10 = C16165b.i(variable.str_value)) == null) {
                return null;
            }
            return i10.p0();
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            p pVar;
            Texture texture = (Texture) value;
            return (texture == null || (pVar = texture.instance) == null || !(pVar instanceof g)) ? new Variable(fieldName, "", Variable.a.InspectorString) : new Variable(fieldName, ((g) pVar).getFile(), Variable.a.InspectorString);
        }
    }

    public class AnonymousClass3 implements a.b {
        final ExtractCallback val$callback;

        public AnonymousClass3(final ExtractCallback val$callback) {
            this.val$callback = val$callback;
        }

        @Override
        public void on(final Bitmap bitmap) {
            d8.m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    AnonymousClass3.this.val$callback.on(bitmap);
                }
            });
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Texture$ExportFormat.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Texture$ExportFormat.class
  classes.dex
 */
    public enum ExportFormat {
        PNG,
        JPG;

        public static ExportFormat[] valuesCustom() {
            ExportFormat[] valuesCustom = values();
            int length = valuesCustom.length;
            ExportFormat[] exportFormatArr = new ExportFormat[length];
            java.lang.System.arraycopy(valuesCustom, 0, exportFormatArr, 0, length);
            return exportFormatArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Texture$ExtractCallback.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Texture$ExtractCallback.class
  classes.dex
 */
    public interface ExtractCallback {
        void on(Bitmap bitmap);
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Texture$Format.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Texture$Format.class
  classes.dex
 */
    public enum Format {
        RGBA8,
        RGB8,
        R32F,
        R8;

        public static Format[] valuesCustom() {
            Format[] valuesCustom = values();
            int length = valuesCustom.length;
            Format[] formatArr = new Format[length];
            java.lang.System.arraycopy(valuesCustom, 0, formatArr, 0, length);
            return formatArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Texture$SliceType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Texture$SliceType.class
  classes.dex
 */
    public enum SliceType {
        Automatic,
        GridByCellSize,
        GridByCellCount;

        public static SliceType[] valuesCustom() {
            SliceType[] valuesCustom = values();
            int length = valuesCustom.length;
            SliceType[] sliceTypeArr = new SliceType[length];
            java.lang.System.arraycopy(valuesCustom, 0, sliceTypeArr, 0, length);
            return sliceTypeArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Texture$SpriteRect.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Texture$SpriteRect.class
  classes.dex
 */
    public static final class SpriteRect {
        public int left;
        public int top;
        public int width;
        public int height;
        public int imageWidth;
        public int imageHeight;
        public float fx;
        public float fy;
        public float fw;

        public float f10356fh;

        public SpriteRect() {
        }

        public SpriteRect(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.left = i10;
            this.top = i11;
            this.width = i12;
            this.height = i13;
            this.imageWidth = i14;
            this.imageHeight = i15;
            refreshPercentages();
        }

        private void refreshPercentages() {
            if (this.imageWidth <= 0 || this.imageHeight <= 0) {
                this.fx = 0.0f;
                this.fy = 0.0f;
                this.fw = 0.0f;
                this.f10356fh = 0.0f;
                return;
            }
            this.fx = this.left / this.imageWidth;
            this.fy = this.top / this.imageHeight;
            this.fw = this.width / this.imageWidth;
            this.f10356fh = this.height / this.imageHeight;
        }
    }

    public Texture(int i10, int i11) {
    }

    public Texture(int i10, int i11, boolean z10) {
    }

    public Texture(int i10, int i11, boolean z10, boolean z11) {
    }

    public Texture(int i10, int i11, Format format) {
    }

    public Texture(int i10, int i11, boolean z10, Format format) {
    }

    public Texture(int i10, int i11, boolean z10, boolean z11, Format format) {
    }

    public void exportToFile(File file) {
        exportToFile(file, 100, ExportFormat.PNG);
    }

    public void exportToFile(File file, int i10) {
        exportToFile(file, i10, ExportFormat.PNG);
    }

    public void exportToFile(File file, int i10, ExportFormat exportFormat) {
    }

    public void apply() {
    }

    @HideGetSet
    public boolean isWritable() {
        return false;
    }

    @HideGetSet
    public boolean isMipmapEnabled() {
        return false;
    }

    @HideGetSet
    public void setMipmapEnabled(boolean z10) {
    }

    @HideGetSet
    public int getWidth() {
        return 0;
    }

    @HideGetSet
    public int getHeight() {
        return 0;
    }

    @HideGetSet
    public boolean hasSpriteData() {
        return false;
    }

    @HideGetSet
    public int getSpriteCount() {
        return 0;
    }

    @HideGetSet
    public SpriteRect getSpriteRect(int i10) {
        return null;
    }

    @HideGetSet
    public int getFramesPerSecond() {
        return 0;
    }

    @HideGetSet
    public void setFramesPerSecond(int i10) {
    }

    @HideGetSet
    public SliceType getSliceType() {
        return null;
    }

    @HideGetSet
    public void setSliceType(SliceType sliceType) {
    }

    @HideGetSet
    public int getAlphaThreshold() {
        return 0;
    }

    @HideGetSet
    public void setAlphaThreshold(int i10) {
    }

    @HideGetSet
    public int getMinIslandSizePixels() {
        return 0;
    }

    @HideGetSet
    public void setMinIslandSizePixels(int i10) {
    }

    @HideGetSet
    public int getGridCellWidth() {
        return 0;
    }

    @HideGetSet
    public void setGridCellWidth(int i10) {
    }

    @HideGetSet
    public int getGridCellHeight() {
        return 0;
    }

    @HideGetSet
    public void setGridCellHeight(int i10) {
    }

    @HideGetSet
    public int getGridCellCountX() {
        return 0;
    }

    @HideGetSet
    public void setGridCellCountX(int i10) {
    }

    @HideGetSet
    public int getGridCellCountY() {
        return 0;
    }

    @HideGetSet
    public void setGridCellCountY(int i10) {
    }

    @HideGetSet
    public int getGridOffsetX() {
        return 0;
    }

    @HideGetSet
    public void setGridOffsetX(int i10) {
    }

    @HideGetSet
    public int getGridOffsetY() {
        return 0;
    }

    @HideGetSet
    public void setGridOffsetY(int i10) {
    }

    @HideGetSet
    public int getSpriteLeft(int i10) {
        return 0;
    }

    @HideGetSet
    public int getSpriteTop(int i10) {
        return 0;
    }

    @HideGetSet
    public int getSpriteWidth(int i10) {
        return 0;
    }

    @HideGetSet
    public int getSpriteHeight(int i10) {
        return 0;
    }

    @HideGetSet
    public float getSpriteFx(int i10) {
        return 0.0f;
    }

    @HideGetSet
    public float getSpriteFy(int i10) {
        return 0.0f;
    }

    @HideGetSet
    public float getSpriteFw(int i10) {
        return 0.0f;
    }

    @HideGetSet
    public float getSpriteFh(int i10) {
        return 0.0f;
    }

    @HideGetSet
    public int getSpriteImageWidth(int i10) {
        return 0;
    }

    @HideGetSet
    public int getSpriteImageHeight(int i10) {
        return 0;
    }

    @HideGetSet
    public void setSpriteRect(int i10, SpriteRect spriteRect) {
    }

    public Color getPixel(int i10, int i11) {
        return null;
    }

    public Color getPixel(Vector2 vector2) {
        return null;
    }

    public void setPixel(int i10, int i11, Color color) {
    }

    public void setPixel(Vector2 vector2, Color color) {
    }

    public Color get(int i10, int i11) {
        return null;
    }

    public Color get(int i10, int i11, Color color) {
        return null;
    }

    public float getFloatRed(int i10, int i11) {
        return 0.0f;
    }

    public float getFloatGreen(int i10, int i11) {
        return 0.0f;
    }

    public float getFloatBlue(int i10, int i11) {
        return 0.0f;
    }

    public float getFloatAlpha(int i10, int i11) {
        return 0.0f;
    }

    public int getIntRed(int i10, int i11) {
        return 0;
    }

    public int getIntGreen(int i10, int i11) {
        return 0;
    }

    public int getIntBlue(int i10, int i11) {
        return 0;
    }

    public int getIntAlpha(int i10, int i11) {
        return 0;
    }

    public void set(int i10, int i11, Color color) {
    }

    public void set(int i10, int i11, float f10, float f11, float f12, float f13) {
    }

    public void set(int i10, int i11, float f10, float f11, float f12) {
    }

    public void setR(int i10, int i11, float f10) {
    }

    public void setG(int i10, int i11, float f10) {
    }

    public void setB(int i10, int i11, float f10) {
    }

    public void setA(int i10, int i11, float f10) {
    }

    public void set(int i10, int i11, int i12, int i13, int i14, int i15) {
    }

    public void set(int i10, int i11, int i12, int i13, int i14) {
    }

    public void setR(int i10, int i11, int i12) {
    }

    public void setG(int i10, int i11, int i12) {
    }

    public void setB(int i10, int i11, int i12) {
    }

    public void setA(int i10, int i11, int i12) {
    }

    public void copyPixels(Texture texture) {
    }

    public void extractGPUImageToBtm(ExtractCallback extractCallback) {
    }

    public void saveGPUImageToFile(File file) {
    }

    public void saveGPUImageToFile(File file, Runnable runnable) {
    }

    public static Texture loadFile(TextureFile textureFile) {
        return null;
    }

    public static Texture loadFile(File file) {
        return null;
    }

    public static Texture loadInputStream(InputStream inputStream) {
        return null;
    }

    public static Texture loadURL(String str) {
        return null;
    }

    public static Texture newDepth(int i10, int i11) {
        return null;
    }

    public static Texture white() {
        return null;
    }

    public static Texture empty() {
        return null;
    }

    public static Texture black() {
        return null;
    }

    public static boolean isRenderable(Texture texture) {
        return false;
    }
}
