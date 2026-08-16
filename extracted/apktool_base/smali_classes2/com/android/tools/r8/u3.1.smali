.class public final synthetic Lcom/android/tools/r8/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ProgramResource;

.field public final synthetic c:Lcom/android/tools/r8/shaking/q3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/shaking/q3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/u3;->b:Lcom/android/tools/r8/ProgramResource;

    iput-object p2, p0, Lcom/android/tools/r8/u3;->c:Lcom/android/tools/r8/shaking/q3;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/u3;->b:Lcom/android/tools/r8/ProgramResource;

    iget-object v1, p0, Lcom/android/tools/r8/u3;->c:Lcom/android/tools/r8/shaking/q3;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/R8Command$Builder;->s(Lcom/android/tools/r8/ProgramResource;Lcom/android/tools/r8/shaking/q3;Ljava/lang/String;)V

    return-void
.end method
