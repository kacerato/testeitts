package Xg;

import java.util.Collection;
import java.util.Objects;
import java.util.function.Consumer;

public class C3323b implements D {

    public Consumer<? super i> f28831a;

    public Consumer<? super i> f28832b;

    public Consumer<? super i> f28833c;

    public Consumer<? super q> f28834d;

    public Consumer<? super Collection<? extends String>> f28835e;

    public Consumer<? super String> f28836f;

    public Consumer<? super Collection<? extends String>> f28837g;

    @Override
    public final void A(q face) {
        Consumer<? super q> consumer = this.f28834d;
        if (consumer != null) {
            consumer.accept(face);
        }
    }

    @Override
    public final void B(float x10, float y10, float z10) {
        D(j.d(x10, y10, z10));
    }

    @Override
    public final void C(int... v10) {
        w(v10, null, null);
    }

    @Override
    public final void D(i texCoord) {
        Consumer<? super i> consumer = this.f28832b;
        if (consumer != null) {
            consumer.accept(texCoord);
        }
    }

    @Override
    public final void F(float x10) {
        D(j.b(x10));
    }

    @Override
    public final void G(float x10, float y10) {
        D(j.c(x10, y10));
    }

    public void a(Consumer<? super q> faceConsumer) {
        this.f28834d = faceConsumer;
    }

    public void b(Consumer<? super Collection<? extends String>> groupNamesConsumer) {
        this.f28835e = groupNamesConsumer;
    }

    @Override
    public final void c(int... v10) {
        w(v10, v10, v10);
    }

    public void d(Consumer<? super String> materialGroupNameConsumer) {
        this.f28836f = materialGroupNameConsumer;
    }

    public void e(Consumer<? super Collection<? extends String>> mtlFileNamesConsumer) {
        this.f28837g = mtlFileNamesConsumer;
    }

    public void f(Consumer<? super i> normalConsumer) {
        this.f28833c = normalConsumer;
    }

    @Override
    public final void g(String materialGroupName) {
        Consumer<? super String> consumer = this.f28836f;
        if (consumer != null) {
            consumer.accept(materialGroupName);
        }
    }

    public void h(Consumer<? super i> texCoordConsumer) {
        this.f28832b = texCoordConsumer;
    }

    public void i(Consumer<? super i> vertexConsumer) {
        this.f28831a = vertexConsumer;
    }

    @Override
    public final void l(Collection<? extends String> mtlFileNames) {
        Consumer<? super Collection<? extends String>> consumer = this.f28837g;
        if (consumer != null) {
            consumer.accept(mtlFileNames);
        }
    }

    @Override
    public final void m(i vertex) {
        Consumer<? super i> consumer = this.f28831a;
        if (consumer != null) {
            consumer.accept(vertex);
        }
    }

    @Override
    public final void p(int... v10) {
        w(v10, v10, null);
    }

    @Override
    public final void q(i normal) {
        Consumer<? super i> consumer = this.f28833c;
        if (consumer != null) {
            consumer.accept(normal);
        }
    }

    @Override
    public final void r(float x10, float y10, float z10) {
        q(j.d(x10, y10, z10));
    }

    @Override
    public final void u(int... v10) {
        w(v10, null, v10);
    }

    @Override
    public final void w(int[] v10, int[] vt, int[] vn2) {
        Objects.requireNonNull(v10, "The vertex indices are null");
        if (this.f28834d != null) {
            A(s.c(v10, vt, vn2));
        }
    }

    @Override
    public final void y(float x10, float y10, float z10) {
        m(j.d(x10, y10, z10));
    }

    @Override
    public final void z(Collection<? extends String> groupNames) {
        Consumer<? super Collection<? extends String>> consumer = this.f28835e;
        if (consumer != null) {
            consumer.accept(groupNames);
        }
    }
}
