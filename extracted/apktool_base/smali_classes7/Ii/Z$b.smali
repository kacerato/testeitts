.class public LIi/Z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:LBi/o;


# direct methods
.method public constructor <init>(IILjava/lang/String;LBi/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LIi/Z$b;->a:I

    iput p2, p0, LIi/Z$b;->b:I

    iput-object p3, p0, LIi/Z$b;->c:Ljava/lang/String;

    iput-object p4, p0, LIi/Z$b;->d:LBi/o;

    return-void
.end method


# virtual methods
.method public a()LBi/o;
    .locals 1

    iget-object v0, p0, LIi/Z$b;->d:LBi/o;

    return-object v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, LIi/Z$b;->d:LBi/o;

    sget-object v1, LBi/o;->PRF:LBi/o;

    if-ne v0, v1, :cond_0

    iget v0, p0, LIi/Z$b;->b:I

    return v0

    :cond_0
    iget v0, p0, LIi/Z$b;->a:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIi/Z$b;->c:Ljava/lang/String;

    return-object v0
.end method
