.class public final synthetic LX9/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;

.field public final synthetic c:LU9/b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;LU9/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX9/u;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;

    iput-object p2, p0, LX9/u;->c:LU9/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LX9/u;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;

    iget-object v1, p0, LX9/u;->c:LU9/b;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;->d(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Widgets/UIShape$j$d;LU9/b;)V

    return-void
.end method
