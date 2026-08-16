.class public final Lcom/android/tools/r8/internal/nQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Wd;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Wd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nQ;->a:Lcom/android/tools/r8/internal/Wd;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/nQ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/nQ;->a:Lcom/android/tools/r8/internal/Wd;

    check-cast p1, Lcom/android/tools/r8/internal/nQ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nQ;->a:Lcom/android/tools/r8/internal/Wd;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nQ;->a:Lcom/android/tools/r8/internal/Wd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/tools/r8/internal/yL;->a(Lcom/android/tools/r8/internal/wM;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/nQ;->a:Lcom/android/tools/r8/internal/Wd;

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/tools/r8/internal/Dc;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/GJ;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
