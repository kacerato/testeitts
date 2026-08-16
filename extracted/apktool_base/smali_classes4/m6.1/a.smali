.class public Lm6/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    invoke-static {}, Lo6/a;->z1()V

    invoke-static {}, Lp6/d;->A1()V

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->A1()V

    invoke-static {}, Ls6/e;->z1()V

    invoke-static {}, Lt6/k;->a()V

    return-void
.end method

.method public static b(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deltaTime"
        }
    .end annotation

    invoke-static {p0}, Lo6/a;->E1(F)V

    invoke-static {p0}, Lp6/d;->D1(F)V

    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/a;->D1(F)V

    invoke-static {p0}, Ls6/e;->C1(F)V

    invoke-static {p0}, Lt6/k;->b(F)V

    return-void
.end method
