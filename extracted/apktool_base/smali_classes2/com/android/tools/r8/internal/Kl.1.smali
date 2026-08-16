.class public final Lcom/android/tools/r8/internal/Kl;
.super Lcom/android/tools/r8/internal/Ql;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/QI;


# static fields
.field public static final f:Lcom/android/tools/r8/internal/Il;


# instance fields
.field public final b:I

.field public final c:Lcom/android/tools/r8/internal/tk;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/android/tools/r8/internal/Hl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/Il;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Il;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Kl;->f:Lcom/android/tools/r8/internal/Il;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/Hl;Ljava/lang/Integer;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN_ENUM_VALUE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p1, Lcom/android/tools/r8/internal/Hl;->b:Lcom/android/tools/r8/internal/nk;

    .line 13
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nk;->getName()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/android/tools/r8/internal/tk;->g:Lcom/android/tools/r8/internal/tk;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/tk;->b()Lcom/android/tools/r8/internal/sk;

    move-result-object v1

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v2, v1, Lcom/android/tools/r8/internal/sk;->b:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/tools/r8/internal/sk;->b:I

    .line 18
    iput-object v0, v1, Lcom/android/tools/r8/internal/sk;->c:Ljava/io/Serializable;

    .line 19
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 20
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 21
    iget v0, v1, Lcom/android/tools/r8/internal/sk;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/android/tools/r8/internal/sk;->b:I

    .line 22
    iput p2, v1, Lcom/android/tools/r8/internal/sk;->d:I

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/fz;->onChanged()V

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/sk;->b()Lcom/android/tools/r8/internal/tk;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tk;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/tools/r8/internal/Kl;->b:I

    .line 27
    iput-object p2, p0, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    .line 28
    iput-object p1, p0, Lcom/android/tools/r8/internal/Kl;->e:Lcom/android/tools/r8/internal/Hl;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/internal/Hl;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kl;->d:Ljava/lang/String;

    return-void

    .line 32
    :cond_0
    invoke-static {p2}, Lcom/android/tools/r8/internal/I0;->newUninitializedMessageException(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/dv0;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/tk;Lcom/android/tools/r8/internal/Pl;Lcom/android/tools/r8/internal/Hl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ql;-><init>()V

    .line 2
    iput p4, p0, Lcom/android/tools/r8/internal/Kl;->b:I

    .line 3
    iput-object p1, p0, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/internal/Kl;->e:Lcom/android/tools/r8/internal/Hl;

    .line 5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object p3, p3, Lcom/android/tools/r8/internal/Hl;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kl;->d:Ljava/lang/String;

    .line 8
    iget-object p1, p2, Lcom/android/tools/r8/internal/Pl;->h:Lcom/android/tools/r8/internal/El;

    .line 9
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/El;->a(Lcom/android/tools/r8/internal/Ql;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/Pl;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kl;->e:Lcom/android/tools/r8/internal/Hl;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Hl;->d:Lcom/android/tools/r8/internal/Pl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/android/tools/r8/internal/fW;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    return-object v0
.end method

.method public final getNumber()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    iget v0, v0, Lcom/android/tools/r8/internal/tk;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Kl;->c:Lcom/android/tools/r8/internal/tk;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tk;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
