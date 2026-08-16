.class public LAi/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAi/i;->d(Lhi/b;Lhi/b;[B[B)Lorg/bouncycastle/cms/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhi/b;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:LAi/i;


# direct methods
.method public constructor <init>(LAi/i;Lhi/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LAi/i$a;->c:LAi/i;

    iput-object p2, p0, LAi/i$a;->a:Lhi/b;

    iput-object p3, p0, LAi/i$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LAi/i$a;->a:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, LAi/i$a;->b:Ljava/lang/Object;

    instance-of v0, v0, LBi/h;

    if-eqz v0, :cond_0

    new-instance v0, LQi/a;

    iget-object v1, p0, LAi/i$a;->b:Ljava/lang/Object;

    check-cast v1, LBi/h;

    invoke-direct {v0, p1, v1}, LQi/a;-><init>(Ljava/io/InputStream;LBi/h;)V

    return-object v0

    :cond_0
    new-instance v0, LQi/a;

    iget-object v1, p0, LAi/i$a;->b:Ljava/lang/Object;

    check-cast v1, LBi/Y;

    invoke-direct {v0, p1, v1}, LQi/a;-><init>(Ljava/io/InputStream;LBi/Y;)V

    return-object v0
.end method
