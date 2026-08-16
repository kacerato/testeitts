.class public final Lcom/android/tools/r8/internal/tA;
.super Lcom/android/tools/r8/internal/rA;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nA;

.field public final b:Lcom/android/tools/r8/internal/Ff0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nA;Lcom/android/tools/r8/internal/Ff0;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/rA;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tA;->b:Lcom/android/tools/r8/internal/Ff0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/tA;->b:Lcom/android/tools/r8/internal/Ff0;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Ff0;->a(Lcom/android/tools/r8/graph/n1;)Lcom/android/tools/r8/graph/n1;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/M2;->v0()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    iget-object p1, p1, Lcom/android/tools/r8/graph/L2;->f:[B

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/nA;->a([B)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/tA;->a:Lcom/android/tools/r8/internal/nA;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/nA;->a([B)V

    return-void
.end method
