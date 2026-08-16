.class public Lo9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/filament/View$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/filament/View$e;

    invoke-direct {v0}, Lcom/google/android/filament/View$e;-><init>()V

    sput-object v0, Lo9/b;->a:Lcom/google/android/filament/View$e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/filament/View$e;->h:Z

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/filament/View$e;->c:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/filament/View$e;->l:Z

    iput-boolean v1, v0, Lcom/google/android/filament/View$e;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentView"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;->p()Lcom/google/android/filament/View;

    move-result-object p0

    sget-object v0, Lcom/google/android/filament/View$q;->PCF:Lcom/google/android/filament/View$q;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->w0(Lcom/google/android/filament/View$q;)V

    sget-object v0, Lo9/b;->a:Lcom/google/android/filament/View$e;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->Y(Lcom/google/android/filament/View$e;)V

    sget-object v0, Lcom/google/android/filament/View$c;->NONE:Lcom/google/android/filament/View$c;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->W(Lcom/google/android/filament/View$c;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->D()Lcom/google/android/filament/View$u;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/filament/View$u;->e:Z

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->B0(Lcom/google/android/filament/View$u;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->G()Lcom/google/android/filament/View$w;

    move-result-object v0

    iput-boolean v1, v0, Lcom/google/android/filament/View$w;->e:Z

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->F0(Lcom/google/android/filament/View$w;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->j()Lcom/google/android/filament/View$f;

    move-result-object v0

    iput-boolean v1, v0, Lcom/google/android/filament/View$f;->d:Z

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->c0(Lcom/google/android/filament/View$f;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->d()Lcom/google/android/filament/View$b;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/filament/View$b;->k:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/filament/View$b;->f:F

    iput v2, v0, Lcom/google/android/filament/View$b;->b:F

    iput v2, v0, Lcom/google/android/filament/View$b;->c:F

    iput-boolean v1, v0, Lcom/google/android/filament/View$b;->w:Z

    sget-object v2, Lcom/google/android/filament/View$n;->LOW:Lcom/google/android/filament/View$n;

    iput-object v2, v0, Lcom/google/android/filament/View$b;->h:Lcom/google/android/filament/View$n;

    iput-object v2, v0, Lcom/google/android/filament/View$b;->i:Lcom/google/android/filament/View$n;

    iput-object v2, v0, Lcom/google/android/filament/View$b;->j:Lcom/google/android/filament/View$n;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->V(Lcom/google/android/filament/View$b;)V

    sget-object v0, Lcom/google/android/filament/View$g;->NONE:Lcom/google/android/filament/View$g;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->d0(Lcom/google/android/filament/View$g;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->l()Lcom/google/android/filament/View$h;

    move-result-object v0

    iput-boolean v1, v0, Lcom/google/android/filament/View$h;->d:Z

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->f0(Lcom/google/android/filament/View$h;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->o()Lcom/google/android/filament/View$i;

    move-result-object v0

    iput-boolean v1, v0, Lcom/google/android/filament/View$i;->l:Z

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->g0(Lcom/google/android/filament/View$i;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->A()Lcom/google/android/filament/View$p;

    move-result-object v0

    iput-boolean v1, v0, Lcom/google/android/filament/View$p;->e:Z

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->u0(Lcom/google/android/filament/View$p;)V

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Graphics/Filament/NativeObjects/FilamentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filamentView"
        }
    .end annotation

    return-void
.end method
