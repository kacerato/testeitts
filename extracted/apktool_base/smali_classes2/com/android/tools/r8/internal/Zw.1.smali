.class public Lcom/android/tools/r8/internal/Zw;
.super Lcom/android/tools/r8/internal/te;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/te<",
        "Lcom/android/tools/r8/graph/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/android/tools/r8/internal/ef0;


# instance fields
.field public final e:Lcom/android/tools/r8/internal/nJ$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    sput-object v0, Lcom/android/tools/r8/internal/Zw;->f:Lcom/android/tools/r8/internal/ef0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/te;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object p1, p0, Lcom/android/tools/r8/internal/te;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->b0()Lcom/android/tools/r8/internal/nJ$o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Zw;->e:Lcom/android/tools/r8/internal/nJ$o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "FilledNewArrayRemover"

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/fB;->i:Lcom/android/tools/r8/internal/mB;

    const/16 p2, 0x24

    .line 3
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/mB;->a(I)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/we;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Yw;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Yw;-><init>(Lcom/android/tools/r8/internal/Zw;)V

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Yw;->a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/ve;

    move-result-object p1

    return-object p1
.end method
