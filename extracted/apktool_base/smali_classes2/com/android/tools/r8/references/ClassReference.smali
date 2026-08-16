.class public final Lcom/android/tools/r8/references/ClassReference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/references/TypeReference;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/references/ClassReference;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/references/ClassReference;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/references/ClassReference;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public asClass()Lcom/android/tools/r8/references/ClassReference;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic asPrimitive()Lcom/android/tools/r8/references/PrimitiveReference;
    .locals 1

    invoke-super {p0}, Lcom/android/tools/r8/references/TypeReference;->asPrimitive()Lcom/android/tools/r8/references/PrimitiveReference;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/android/tools/r8/references/ClassReference;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/references/ClassReference;->a:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/references/ClassReference;

    iget-object p1, p1, Lcom/android/tools/r8/references/ClassReference;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBinaryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/ClassReference;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/ClassReference;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/references/ClassReference;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
