package Xg;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class v {

    public static final Logger f28917b = Logger.getLogger(v.class.getName());

    public static final Level f28918c = Level.FINE;

    public final f<? super A> f28919a;

    public class a implements f<A> {

        public final int f28920a;

        public a(final int val$maxNumVertices) {
            this.f28920a = val$maxNumVertices;
        }

        @Override
        public boolean test(A obj) {
            return obj.a() > this.f28920a;
        }
    }

    public class b implements t {

        public final List f28922a;

        public b(final List val$faces) {
            this.f28922a = val$faces;
        }

        @Override
        public q b(int index) {
            return (q) this.f28922a.get(index);
        }

        @Override
        public String getName() {
            return "default";
        }

        @Override
        public int getNumFaces() {
            return this.f28922a.size();
        }
    }

    public class c implements f<q> {

        public final A f28923a;

        public final float f28924b;

        public c(final A val$obj, final float val$meanX) {
            this.f28923a = val$obj;
            this.f28924b = val$meanX;
        }

        @Override
        public boolean test(q objFace) {
            return v.d(this.f28923a, objFace, 0) >= this.f28924b;
        }
    }

    public class d implements f<q> {

        public final A f28925a;

        public final float f28926b;

        public d(final A val$obj, final float val$meanY) {
            this.f28925a = val$obj;
            this.f28926b = val$meanY;
        }

        @Override
        public boolean test(q objFace) {
            return v.d(this.f28925a, objFace, 1) >= this.f28926b;
        }
    }

    public class e implements f<q> {

        public final A f28927a;

        public final float f28928b;

        public e(final A val$obj, final float val$meanZ) {
            this.f28927a = val$obj;
            this.f28928b = val$meanZ;
        }

        @Override
        public boolean test(q objFace) {
            return v.d(this.f28927a, objFace, 2) >= this.f28928b;
        }
    }

    public interface f<T> {
        boolean test(T t10);
    }

    public v(final int maxNumVertices) {
        this.f28919a = new a(maxNumVertices);
    }

    public static float b(float[] array) {
        float f10 = 0.0f;
        for (float f11 : array) {
            f10 += f11;
        }
        return f10 / array.length;
    }

    public static t c(final List<? extends q> faces) {
        return new b(faces);
    }

    public static float d(A obj, q face, int component) {
        int a10 = face.a();
        float f10 = 0.0f;
        for (int i10 = 0; i10 < a10; i10++) {
            f10 += obj.n(face.f(i10)).get(component);
        }
        return f10 / a10;
    }

    public static float[] e(A obj, int component) {
        int numFaces = obj.getNumFaces();
        float[] fArr = new float[numFaces];
        for (int i10 = 0; i10 < numFaces; i10++) {
            fArr[i10] = d(obj, obj.b(i10), component);
        }
        return fArr;
    }

    public static f<q> f(final A obj) {
        float[] e10 = e(obj, 0);
        float[] e11 = e(obj, 1);
        float[] e12 = e(obj, 2);
        float b10 = b(e10);
        float b11 = b(e11);
        float b12 = b(e12);
        float j10 = j(e10, b10);
        float j11 = j(e11, b11);
        float j12 = j(e12, b12);
        return (j10 < j11 || j10 < j12) ? (j11 < j10 || j11 < j12) ? new e(obj, b12) : new d(obj, b11) : new c(obj, b10);
    }

    public static List<o> h(A obj, List<q> allFaces) {
        if (allFaces.size() <= 1) {
            return Arrays.asList(x.g(obj, c(allFaces), null));
        }
        int size = (allFaces.size() + 1) / 2;
        return Arrays.asList(x.g(obj, c(allFaces.subList(0, size)), null), x.g(obj, c(allFaces.subList(size, allFaces.size())), null));
    }

    public static List<o> i(A obj) {
        f28917b.log(f28918c, "Splitting OBJ with " + obj.a() + " vertices");
        f<q> f10 = f(obj);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < obj.getNumFaces(); i10++) {
            q b10 = obj.b(i10);
            if (f10.test(b10)) {
                arrayList.add(b10);
            } else {
                arrayList2.add(b10);
            }
        }
        if (arrayList.isEmpty()) {
            return h(obj, arrayList2);
        }
        if (arrayList2.isEmpty()) {
            return h(obj, arrayList);
        }
        f28917b.log(f28918c, "Split OBJ with " + obj.getNumFaces() + " faces into " + arrayList.size() + " and " + arrayList2.size() + " faces");
        return Arrays.asList(x.g(obj, c(arrayList), null), x.g(obj, c(arrayList2), null));
    }

    public static float j(float[] array, float mean) {
        float f10 = 0.0f;
        for (float f11 : array) {
            double d10 = f11 - mean;
            f10 = (float) (f10 + (d10 * d10));
        }
        return f10 / (array.length - 1);
    }

    public List<o> g(A obj) {
        boolean z10;
        if (!this.f28919a.test(obj)) {
            o a10 = z.a();
            x.b(obj, a10);
            return Collections.singletonList(a10);
        }
        List<o> i10 = i(obj);
        for (boolean z11 = i10.size() > 1; z11; z11 = z10) {
            ArrayList arrayList = new ArrayList();
            z10 = false;
            for (o oVar : i10) {
                if (this.f28919a.test(oVar)) {
                    List<o> i11 = i(oVar);
                    arrayList.addAll(i11);
                    if (i11.size() > 1) {
                        z10 = true;
                    }
                } else {
                    arrayList.add(oVar);
                }
            }
            i10 = arrayList;
        }
        return i10;
    }
}
