.class public final enum Lcom/android/tools/r8/internal/vd;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/android/tools/r8/internal/vd;

.field public static final enum c:Lcom/android/tools/r8/internal/vd;

.field public static final enum d:Lcom/android/tools/r8/internal/vd;

.field public static final enum e:Lcom/android/tools/r8/internal/vd;

.field public static final enum f:Lcom/android/tools/r8/internal/vd;

.field public static final synthetic g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/vd;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/vd;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/vd;->b:Lcom/android/tools/r8/internal/vd;

    new-instance v0, Lcom/android/tools/r8/internal/vd;

    const/4 v1, 0x1

    const-string v2, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/vd;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/vd;->c:Lcom/android/tools/r8/internal/vd;

    new-instance v0, Lcom/android/tools/r8/internal/vd;

    const/4 v1, 0x2

    const-string v2, "TYPE_NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/vd;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/vd;->d:Lcom/android/tools/r8/internal/vd;

    new-instance v0, Lcom/android/tools/r8/internal/vd;

    const/4 v1, 0x3

    const-string v2, "CANONICAL_NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/vd;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/vd;->e:Lcom/android/tools/r8/internal/vd;

    new-instance v0, Lcom/android/tools/r8/internal/vd;

    const/4 v1, 0x4

    const-string v2, "SIMPLE_NAME"

    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/vd;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/tools/r8/internal/vd;->f:Lcom/android/tools/r8/internal/vd;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/u1;I)Lcom/android/tools/r8/graph/L2;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    const-string v3, "[]"

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    sget-boolean v0, Lcom/android/tools/r8/internal/vd;->g:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->s1()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->r1()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->P0()Lcom/android/tools/r8/graph/e4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/e4;->c()Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-lez p4, :cond_9

    invoke-static {v3, p4}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected ClassNameMapping: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x24

    const/16 v0, 0x2e

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    if-lez p4, :cond_9

    invoke-static {v3, p4}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Type#getTypeName not supported yet"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-lez p4, :cond_9

    const-string p2, "["

    invoke-static {p2, p4}, Lcom/android/tools/r8/z2;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "L"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object p1

    return-object p1
.end method
