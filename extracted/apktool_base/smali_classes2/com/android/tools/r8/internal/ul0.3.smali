.class public final synthetic Lcom/android/tools/r8/internal/ul0;
.super Lcom/android/tools/r8/internal/H8;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ny;
.implements Lcom/android/tools/r8/internal/vM;


# static fields
.field public static final h:Lcom/android/tools/r8/internal/ul0;


# instance fields
.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/ul0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ul0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/ul0;->h:Lcom/android/tools/r8/internal/ul0;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-class v0, Lcom/android/tools/r8/internal/nl0;

    const-string v1, "iterator"

    const-string v2, "iterator()Ljava/util/Iterator;"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/H8;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    iput v3, p0, Lcom/android/tools/r8/internal/ul0;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/vM;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/te0;->a:Lcom/android/tools/r8/internal/ue0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    check-cast p1, Lcom/android/tools/r8/internal/nl0;

    .line 3
    const-string v0, "p0"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/nl0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ul0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/tools/r8/internal/ul0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/tools/r8/internal/H8;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/ul0;->g:I

    iget v3, p1, Lcom/android/tools/r8/internal/ul0;->g:I

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/G8;->b:Lcom/android/tools/r8/internal/G8;

    invoke-virtual {v1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->b()Lcom/android/tools/r8/internal/Dc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/H8;->b()Lcom/android/tools/r8/internal/Dc;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ul0;->a()Lcom/android/tools/r8/internal/vM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->b()Lcom/android/tools/r8/internal/Dc;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/H8;->b()Lcom/android/tools/r8/internal/Dc;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/ul0;->a()Lcom/android/tools/r8/internal/vM;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/H8;->b:Lcom/android/tools/r8/internal/vM;

    :cond_0
    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "<init>"

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "constructor (Kotlin reflection is not available)"

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
