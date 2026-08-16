.class public final Lkotlin/time/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/A$a;
    }
.end annotation


# static fields
.field public static final d:Lkotlin/time/A$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:J


# instance fields
.field public b:J

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/A$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/A$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lkotlin/time/A;->d:Lkotlin/time/A$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lkotlin/time/A;-><init>(JI)V

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lkotlin/time/A;->b:J

    .line 3
    iput p3, p0, Lkotlin/time/A;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/A;->b:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lkotlin/time/A;->c:I

    return v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/time/q;->d:Lkotlin/time/q$a;

    iget-wide v1, p0, Lkotlin/time/A;->b:J

    iget v3, p0, Lkotlin/time/A;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lkotlin/time/q$a;->b(JI)Lkotlin/time/q;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lkotlin/time/A;->b:J

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lkotlin/time/A;->c:I

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1    # Ljava/io/ObjectInput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lkotlin/time/A;->b:J

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result p1

    iput p1, p0, Lkotlin/time/A;->c:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1    # Ljava/io/ObjectOutput;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lkotlin/time/A;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget v0, p0, Lkotlin/time/A;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method
