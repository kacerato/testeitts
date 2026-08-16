.class public final synthetic Lcom/android/tools/r8/tracereferences/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/utils/i$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/utils/i$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/tracereferences/n;->b:Lcom/android/tools/r8/utils/i$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/n;->b:Lcom/android/tools/r8/utils/i$a;

    check-cast p1, Lcom/android/tools/r8/ProgramResourceProvider;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->a(Lcom/android/tools/r8/ProgramResourceProvider;)Lcom/android/tools/r8/utils/i$a;

    return-void
.end method
