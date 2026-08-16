.class public final Lcom/android/tools/r8/internal/wd;
.super Lcom/android/tools/r8/internal/ZY;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Mq0;


# static fields
.field public static final d:Lcom/android/tools/r8/internal/wd;

.field public static final e:Lcom/android/tools/r8/internal/wd;

.field public static final f:Lcom/android/tools/r8/internal/wd;

.field public static final g:Lcom/android/tools/r8/internal/wd;

.field public static final h:Lcom/android/tools/r8/internal/wd;


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/vd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/wd;

    sget-object v1, Lcom/android/tools/r8/internal/vd;->e:Lcom/android/tools/r8/internal/vd;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;)V

    sput-object v0, Lcom/android/tools/r8/internal/wd;->d:Lcom/android/tools/r8/internal/wd;

    new-instance v0, Lcom/android/tools/r8/internal/wd;

    sget-object v1, Lcom/android/tools/r8/internal/vd;->c:Lcom/android/tools/r8/internal/vd;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;)V

    sput-object v0, Lcom/android/tools/r8/internal/wd;->e:Lcom/android/tools/r8/internal/wd;

    new-instance v0, Lcom/android/tools/r8/internal/wd;

    sget-object v1, Lcom/android/tools/r8/internal/vd;->b:Lcom/android/tools/r8/internal/vd;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;)V

    sput-object v0, Lcom/android/tools/r8/internal/wd;->f:Lcom/android/tools/r8/internal/wd;

    new-instance v0, Lcom/android/tools/r8/internal/wd;

    sget-object v1, Lcom/android/tools/r8/internal/vd;->f:Lcom/android/tools/r8/internal/vd;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;)V

    sput-object v0, Lcom/android/tools/r8/internal/wd;->g:Lcom/android/tools/r8/internal/wd;

    new-instance v0, Lcom/android/tools/r8/internal/wd;

    sget-object v1, Lcom/android/tools/r8/internal/vd;->d:Lcom/android/tools/r8/internal/vd;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/wd;-><init>(Lcom/android/tools/r8/internal/vd;)V

    sput-object v0, Lcom/android/tools/r8/internal/wd;->h:Lcom/android/tools/r8/internal/wd;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/vd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/ZY;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/tools/r8/internal/wd;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/vd;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/tools/r8/internal/ZY;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    .line 6
    iput p2, p0, Lcom/android/tools/r8/internal/wd;->b:I

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/wd;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/tools/r8/internal/wd;->b:I

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/vd;)Lcom/android/tools/r8/internal/wd;
    .locals 3

    .line 4
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/android/tools/r8/internal/wd;->g:Lcom/android/tools/r8/internal/wd;

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ClassNameMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    sget-object p0, Lcom/android/tools/r8/internal/wd;->d:Lcom/android/tools/r8/internal/wd;

    return-object p0

    .line 8
    :cond_2
    sget-object p0, Lcom/android/tools/r8/internal/wd;->h:Lcom/android/tools/r8/internal/wd;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lcom/android/tools/r8/internal/wd;->e:Lcom/android/tools/r8/internal/wd;

    return-object p0

    .line 10
    :cond_4
    sget-object p0, Lcom/android/tools/r8/internal/wd;->f:Lcom/android/tools/r8/internal/wd;

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/Pq0;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Ox1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ox1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    move-result-object p0

    new-instance v0, Lcom/android/tools/r8/internal/Px1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Px1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Pq0;->a(Ljava/util/function/ToIntFunction;)Lcom/android/tools/r8/internal/Pq0;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/wd;)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final E()Lcom/android/tools/r8/internal/Mq0;
    .locals 0

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ZY;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/android/tools/r8/internal/rA;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/Mq0;->a(Lcom/android/tools/r8/internal/rA;)V

    return-void
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/vd;->b:Lcom/android/tools/r8/internal/vd;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/tools/r8/internal/vd;->f:Lcom/android/tools/r8/internal/vd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/tools/r8/internal/wd;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/wd;

    iget v0, p0, Lcom/android/tools/r8/internal/wd;->b:I

    iget v1, p1, Lcom/android/tools/r8/internal/wd;->b:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    iget-object p1, p1, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/wd;->c:Lcom/android/tools/r8/internal/vd;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/tools/r8/internal/wd;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()Lcom/android/tools/r8/internal/Nq0;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Qx1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Qx1;-><init>()V

    return-object v0
.end method
