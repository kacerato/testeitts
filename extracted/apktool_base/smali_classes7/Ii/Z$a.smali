.class public LIi/Z$a;
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
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:LBi/o;


# direct methods
.method public constructor <init>(ILjava/lang/String;LBi/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LIi/Z$a;->a:I

    iput-object p2, p0, LIi/Z$a;->b:Ljava/lang/String;

    iput-object p3, p0, LIi/Z$a;->c:LBi/o;

    return-void
.end method


# virtual methods
.method public a()LBi/o;
    .locals 1

    iget-object v0, p0, LIi/Z$a;->c:LBi/o;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, LIi/Z$a;->a:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIi/Z$a;->b:Ljava/lang/String;

    return-object v0
.end method
