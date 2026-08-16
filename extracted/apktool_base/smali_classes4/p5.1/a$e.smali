.class public Lp5/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp5/a;->u1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp5/a;


# direct methods
.method public constructor <init>(Lp5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lp5/a$e;->a:Lp5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lp5/a$e;->a:Lp5/a;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    return-void
.end method
