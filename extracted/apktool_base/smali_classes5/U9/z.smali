.class public final synthetic LU9/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i$a;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Utils/Variable;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU9/z;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i$a;

    iput-object p2, p0, LU9/z;->c:Lcom/itsmagic/engine/Engines/Utils/Variable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LU9/z;->b:Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i$a;

    iget-object v1, p0, LU9/z;->c:Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i$a;->a(Lcom/itsmagic/engine/Engines/Engine/ImGUI/Styles/UIStyle$i$a;Lcom/itsmagic/engine/Engines/Utils/Variable;)V

    return-void
.end method
