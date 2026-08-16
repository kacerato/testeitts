.class public Lak/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lak/h;->c(LXi/o0;Ljava/security/spec/AlgorithmParameterSpec;)LXi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LXi/o0;

.field public final synthetic b:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(LXi/o0;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lak/h$c;->a:LXi/o0;

    iput-object p2, p0, Lak/h$c;->b:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, LXi/a;

    iget-object v1, p0, Lak/h$c;->a:LXi/o0;

    invoke-static {}, Lak/h;->a()Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v3, p0, Lak/h$c;->b:Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lak/h;->b()Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v5, p0, Lak/h$c;->b:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v0, v1, v2, v3}, LXi/a;-><init>(LXi/o0;I[B)V

    return-object v0
.end method
