.class public Lorg/bouncycastle/util/test/TestFailedException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private _result:Lhm/i;


# direct methods
.method public constructor <init>(Lhm/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Lhm/i;

    return-void
.end method


# virtual methods
.method public getResult()Lhm/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/util/test/TestFailedException;->_result:Lhm/i;

    return-object v0
.end method
