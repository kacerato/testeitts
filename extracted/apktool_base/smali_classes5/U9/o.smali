.class public final synthetic LU9/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;

.field public final synthetic c:LU9/b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;LU9/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU9/o;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;

    iput-object p2, p0, LU9/o;->c:LU9/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LU9/o;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;

    iget-object v1, p0, LU9/o;->c:LU9/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$d$c;LU9/b;)V

    return-void
.end method
