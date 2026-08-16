.class public LB5/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB5/c;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB5/c;


# direct methods
.method public constructor <init>(LB5/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB5/c$k;->a:LB5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/UIComponents/CustomCheckBox/CustomCheckBox;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compoundButton",
            "b"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object p1, p0, LB5/c$k;->a:LB5/c;

    invoke-static {p1}, LB5/c;->i(LB5/c;)Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;->setEnabled(Z)V

    return-void
.end method
