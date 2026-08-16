.class public final synthetic Lcom/android/tools/r8/internal/Td1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Yx;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Td1;->a:Ljava/util/List;

    iput p2, p0, Lcom/android/tools/r8/internal/Td1;->b:I

    return-void
.end method


# virtual methods
.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Td1;->a:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/Td1;->b:I

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/iE;->a(Ljava/util/List;ILjava/util/function/Consumer;)V

    return-void
.end method
