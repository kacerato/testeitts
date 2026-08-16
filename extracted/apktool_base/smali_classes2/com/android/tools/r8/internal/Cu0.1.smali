.class public final Lcom/android/tools/r8/internal/Cu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Type;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/android/tools/r8/internal/d;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/android/tools/r8/internal/d;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/Cu0;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/internal/Cu0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/android/tools/r8/internal/Cu0;

    iget-object p1, p1, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/d;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

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

    iget v0, p0, Lcom/android/tools/r8/internal/Cu0;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/android/tools/r8/internal/d;->c(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
