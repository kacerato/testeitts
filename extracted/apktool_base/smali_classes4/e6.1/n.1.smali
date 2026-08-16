.class public final synthetic Le6/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Le6/E;

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;


# direct methods
.method public synthetic constructor <init>(Le6/E;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/n;->b:Le6/E;

    iput p2, p0, Le6/n;->c:I

    iput-object p3, p0, Le6/n;->d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Le6/n;->b:Le6/E;

    iget v1, p0, Le6/n;->c:I

    iget-object v2, p0, Le6/n;->d:Lcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;

    invoke-static {v0, v1, v2, p1}, Le6/E;->f(Le6/E;ILcom/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot;Landroid/view/View;)V

    return-void
.end method
