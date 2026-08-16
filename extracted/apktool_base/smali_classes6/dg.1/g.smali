.class public final Ldg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldg/g$a;
    }
.end annotation

.annotation build Ldg/a;
.end annotation


# static fields
.field public static final d:Ldg/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:J


# instance fields
.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldg/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldg/g$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Ldg/g;->d:Ldg/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v1, v0, v1}, Ldg/g;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Ldg/g;->b:J

    .line 3
    iput-wide p3, p0, Ldg/g;->c:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Ldg/g;->c:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Ldg/g;->b:J

    return-wide v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 5

    sget-object v0, Ldg/c;->d:Ldg/c$a;

    iget-wide v1, p0, Ldg/g;->b:J

    iget-wide v3, p0, Ldg/g;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Ldg/c$a;->b(JJ)Ldg/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Ldg/g;->c:J

    return-void
.end method

.method public final e(J)V
    .locals 0

    iput-wide p1, p0, Ldg/g;->b:J

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

    iput-wide v0, p0, Ldg/g;->b:J

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ldg/g;->c:J

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

    iget-wide v0, p0, Ldg/g;->b:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    iget-wide v0, p0, Ldg/g;->c:J

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method
