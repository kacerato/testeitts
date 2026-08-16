.class public final synthetic Le6/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Le6/l;

.field public final synthetic c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/j;->b:Le6/l;

    iput-object p2, p0, Le6/j;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    iput-object p3, p0, Le6/j;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Le6/j;->b:Le6/l;

    iget-object v1, p0, Le6/j;->c:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;

    iget-object v2, p0, Le6/j;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Le6/l;->y1(Le6/l;Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeAttribute;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method
