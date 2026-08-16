.class public LQk/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhi/b;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lhi/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQk/r;->a:Lhi/b;

    iput-object p2, p0, LQk/r;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhi/b;[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQk/r;->a:Lhi/b;

    iput-object p2, p0, LQk/r;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQk/r;->a:Lhi/b;

    iput-object p1, p0, LQk/r;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LQk/r;->a:Lhi/b;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LQk/r;->b:Ljava/lang/Object;

    return-object v0
.end method
