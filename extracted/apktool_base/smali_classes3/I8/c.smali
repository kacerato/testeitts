.class public final synthetic LI8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/e;


# instance fields
.field public final synthetic a:Ly0/b;


# direct methods
.method public synthetic constructor <init>(Ly0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI8/c;->a:Ly0/b;

    return-void
.end method


# virtual methods
.method public final a(Lv1/k;)V
    .locals 1

    iget-object v0, p0, LI8/c;->a:Ly0/b;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;->b(Ly0/b;Lv1/k;)V

    return-void
.end method
