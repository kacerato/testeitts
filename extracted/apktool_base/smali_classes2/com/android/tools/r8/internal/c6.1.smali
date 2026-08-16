.class public final Lcom/android/tools/r8/internal/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/ww0;


# static fields
.field public static final b:Lcom/android/tools/r8/internal/c6;

.field public static final c:Lcom/android/tools/r8/internal/c6;

.field public static final d:Lcom/android/tools/r8/internal/c6;

.field public static final e:Lcom/android/tools/r8/internal/c6;

.field public static final f:Lcom/android/tools/r8/internal/c6;

.field public static final g:Lcom/android/tools/r8/internal/c6;

.field public static final h:Lcom/android/tools/r8/internal/c6;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/tt0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/c6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c6;-><init>(Lcom/android/tools/r8/internal/tt0;)V

    sput-object v0, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    new-instance v0, Lcom/android/tools/r8/internal/c6;

    sget-object v1, Lcom/android/tools/r8/internal/tt0;->j:Lcom/android/tools/r8/internal/tt0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c6;-><init>(Lcom/android/tools/r8/internal/tt0;)V

    sput-object v0, Lcom/android/tools/r8/internal/c6;->c:Lcom/android/tools/r8/internal/c6;

    new-instance v0, Lcom/android/tools/r8/internal/c6;

    sget-object v1, Lcom/android/tools/r8/internal/tt0;->k:Lcom/android/tools/r8/internal/tt0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c6;-><init>(Lcom/android/tools/r8/internal/tt0;)V

    sput-object v0, Lcom/android/tools/r8/internal/c6;->d:Lcom/android/tools/r8/internal/c6;

    new-instance v0, Lcom/android/tools/r8/internal/c6;

    sget-object v1, Lcom/android/tools/r8/internal/tt0;->l:Lcom/android/tools/r8/internal/tt0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c6;-><init>(Lcom/android/tools/r8/internal/tt0;)V

    sput-object v0, Lcom/android/tools/r8/internal/c6;->e:Lcom/android/tools/r8/internal/c6;

    new-instance v0, Lcom/android/tools/r8/internal/c6;

    sget-object v1, Lcom/android/tools/r8/internal/tt0;->m:Lcom/android/tools/r8/internal/tt0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c6;-><init>(Lcom/android/tools/r8/internal/tt0;)V

    sput-object v0, Lcom/android/tools/r8/internal/c6;->f:Lcom/android/tools/r8/internal/c6;

    new-instance v0, Lcom/android/tools/r8/internal/c6;

    const-string v1, "java/lang/Object"

    invoke-static {v1}, Lcom/android/tools/r8/internal/tt0;->d(Ljava/lang/String;)Lcom/android/tools/r8/internal/tt0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c6;-><init>(Lcom/android/tools/r8/internal/tt0;)V

    sput-object v0, Lcom/android/tools/r8/internal/c6;->g:Lcom/android/tools/r8/internal/c6;

    new-instance v0, Lcom/android/tools/r8/internal/c6;

    sget-object v1, Lcom/android/tools/r8/internal/tt0;->e:Lcom/android/tools/r8/internal/tt0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/c6;-><init>(Lcom/android/tools/r8/internal/tt0;)V

    sput-object v0, Lcom/android/tools/r8/internal/c6;->h:Lcom/android/tools/r8/internal/c6;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/tt0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    sget-object v1, Lcom/android/tools/r8/internal/tt0;->l:Lcom/android/tools/r8/internal/tt0;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/tools/r8/internal/tt0;->m:Lcom/android/tools/r8/internal/tt0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->c()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/c6;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    if-nez v1, :cond_2

    check-cast p1, Lcom/android/tools/r8/internal/c6;

    iget-object p1, p1, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    check-cast p1, Lcom/android/tools/r8/internal/c6;

    iget-object p1, p1, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/tt0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/c6;->b:Lcom/android/tools/r8/internal/c6;

    if-ne p0, v0, :cond_0

    const-string v0, "."

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/tools/r8/internal/c6;->h:Lcom/android/tools/r8/internal/c6;

    if-ne p0, v0, :cond_1

    const-string v0, "A"

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/tools/r8/internal/c6;->g:Lcom/android/tools/r8/internal/c6;

    if-ne p0, v0, :cond_2

    const-string v0, "R"

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/c6;->a:Lcom/android/tools/r8/internal/tt0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tt0;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
