.class public final synthetic LU9/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;

.field public final synthetic c:LU9/e;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;LU9/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU9/r;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;

    iput-object p2, p0, LU9/r;->c:LU9/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LU9/r;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;

    iget-object v1, p0, LU9/r;->c:LU9/e;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$f$a;LU9/e;)V

    return-void
.end method
