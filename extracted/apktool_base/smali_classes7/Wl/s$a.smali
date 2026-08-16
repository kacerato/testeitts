.class public LWl/s$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWl/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LWl/e;

.field public b:LWl/e;

.field public c:LWl/x;


# direct methods
.method public constructor <init>(LWl/e;LWl/e;LWl/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWl/s$a;->a:LWl/e;

    iput-object p2, p0, LWl/s$a;->b:LWl/e;

    iput-object p3, p0, LWl/s$a;->c:LWl/x;

    return-void
.end method


# virtual methods
.method public a()LWl/e;
    .locals 1

    iget-object v0, p0, LWl/s$a;->a:LWl/e;

    return-object v0
.end method

.method public b()LWl/x;
    .locals 1

    iget-object v0, p0, LWl/s$a;->c:LWl/x;

    return-object v0
.end method

.method public c()LWl/e;
    .locals 1

    iget-object v0, p0, LWl/s$a;->b:LWl/e;

    return-object v0
.end method
