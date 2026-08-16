.class public final synthetic LF6/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/l;


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF6/h;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LF6/h;->b:Landroid/content/Context;

    check-cast p1, Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Scripting/Interfaces/SuperClasses/a$a;->b(Landroid/content/Context;Lorg/blacksquircle/ui/editorkit/plugin/autocomplete/AutoCompletePlugin;)Lnf/P0;

    move-result-object p1

    return-object p1
.end method
