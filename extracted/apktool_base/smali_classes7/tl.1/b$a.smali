.class public Ltl/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltl/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ltl/b;


# direct methods
.method public constructor <init>(Ltl/b;)V
    .locals 0

    iput-object p1, p0, Ltl/b$a;->a:Ltl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltl/b$a;->a:Ltl/b;

    invoke-static {v0}, Ltl/b;->j(Ltl/b;)V

    const/4 v0, 0x0

    return-object v0
.end method
