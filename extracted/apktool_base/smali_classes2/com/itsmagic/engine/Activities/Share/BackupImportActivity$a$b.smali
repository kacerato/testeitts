.class public Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$finalImported",
            "val$finalFailed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;->d:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;->d:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a;->b:Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;->b:I

    iget v2, p0, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity$a$b;->c:I

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;->i(Lcom/itsmagic/engine/Activities/Share/BackupImportActivity;II)V

    return-void
.end method
