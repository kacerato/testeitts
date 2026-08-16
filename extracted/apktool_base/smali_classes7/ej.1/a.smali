.class public Lej/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[B


# instance fields
.field public a:LAh/n;

.field public b:LAh/e;

.field public c:LAh/m;

.field public d:LAh/m;

.field public e:LAh/f;

.field public f:LAh/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lej/a;->g:[B

    return-void
.end method

.method public constructor <init>(LAh/g;LAh/n;LAh/f;LAh/e;LAh/m;LAh/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lej/a;->f:LAh/g;

    iput-object p2, p0, Lej/a;->a:LAh/n;

    iput-object p3, p0, Lej/a;->e:LAh/f;

    iput-object p4, p0, Lej/a;->b:LAh/e;

    iput-object p5, p0, Lej/a;->c:LAh/m;

    iput-object p6, p0, Lej/a;->d:LAh/m;

    return-void
.end method


# virtual methods
.method public a(Lgj/b;)Lej/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lej/a;->b()LAh/d;

    move-result-object v0

    invoke-interface {p1}, Lgj/b;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v0, v2}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v1, Lej/b;

    new-instance v2, LAh/b;

    invoke-interface {p1}, Lgj/b;->getSignature()[B

    move-result-object p1

    invoke-direct {v2, v0, p1}, LAh/b;-><init>(LAh/d;[B)V

    invoke-direct {v1, v2}, Lej/b;-><init>(LAh/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/eac/EACException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()LAh/d;
    .locals 9

    new-instance v1, Loh/K0;

    new-instance v0, Loh/C0;

    sget-object v2, Lej/a;->g:[B

    invoke-direct {v0, v2}, Loh/C0;-><init>([B)V

    const/4 v2, 0x0

    const/16 v3, 0x40

    const/16 v4, 0x29

    invoke-direct {v1, v2, v3, v4, v0}, Loh/K0;-><init>(ZIILoh/g;)V

    new-instance v8, LAh/d;

    iget-object v2, p0, Lej/a;->f:LAh/g;

    iget-object v3, p0, Lej/a;->a:LAh/n;

    iget-object v4, p0, Lej/a;->e:LAh/f;

    iget-object v5, p0, Lej/a;->b:LAh/e;

    iget-object v6, p0, Lej/a;->c:LAh/m;

    iget-object v7, p0, Lej/a;->d:LAh/m;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, LAh/d;-><init>(Loh/M;LAh/g;LAh/n;LAh/f;LAh/e;LAh/m;LAh/m;)V

    return-object v8
.end method
