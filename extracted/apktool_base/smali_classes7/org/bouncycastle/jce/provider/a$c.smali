.class public Lorg/bouncycastle/jce/provider/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/a$c;->a:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jce/provider/a$c;->b:I

    return-void
.end method


# virtual methods
.method public a()LBi/o;
    .locals 1

    sget-object v0, LBi/o;->ANY:LBi/o;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jce/provider/a$c;->b:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/a$c;->a:Ljava/lang/String;

    return-object v0
.end method
