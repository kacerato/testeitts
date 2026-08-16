.class public final Lcom/android/tools/r8/internal/sv0;
.super Lcom/android/tools/r8/naming/mappinginformation/c;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/naming/mappinginformation/c;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sv0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sv0;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/sv0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/sv0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/mappinginformation/e;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/naming/mappinginformation/e;)Lcom/android/tools/r8/naming/mappinginformation/e;
    .locals 1

    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    const-string v0, "Unable to compose unknown json mapping information"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final k()Lcom/android/tools/r8/internal/sv0;
    .locals 0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sv0;->b:Ljava/lang/String;

    return-object v0
.end method
