.class public Lw5/c$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw5/c;->D(Landroid/content/Context;Ljava/lang/String;ZLw5/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/EditText;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Z

.field public final synthetic f:Lw5/l;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;ZLw5/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$input",
            "val$insideProjectFullPath",
            "val$context",
            "val$createExample",
            "val$callbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lw5/c$a0;->b:Landroid/widget/EditText;

    iput-object p2, p0, Lw5/c$a0;->c:Ljava/lang/String;

    iput-object p3, p0, Lw5/c$a0;->d:Landroid/content/Context;

    iput-boolean p4, p0, Lw5/c$a0;->e:Z

    iput-object p5, p0, Lw5/c$a0;->f:Lw5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    const-string p1, "."

    const-string p2, " "

    const-string v0, "/"

    invoke-static {}, LN7/c;->Y()V

    :try_start_0
    iget-object v1, p0, Lw5/c$a0;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v1}, LTc/b;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".java"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lw5/c$a0;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw5/c$a0;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw5/c$a0;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v1, LW7/b;->j:Ld8/j;

    invoke-static {p1}, Ld8/j;->Z(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lw5/c$a0;->e:Z

    if-eqz v1, :cond_2

    const-string v1, "package JAVARuntime;\n\n// Useful imports\nimport java.util.*;\nimport java.text.*;\nimport java.net.*;\nimport java.math.*;\nimport java.io.*;\nimport java.nio.*;\nimport android.widget.*;\n\n/**\n * @Author \n*/\npublic class @CLASSNAME@ extends Module {\n\n    // Zero-argument constructor required\n    public @CLASSNAME@() {\n        super(\"@CLASSNAME@\"); // Initialize module with the name\n\n        //// CONFIGURATIONS\n        super.setExecution(new ExecutionAllow(\n                true,  // Allow module execution while game is stopped\n                false  // Allow module execution while game is running\n        ));\n        //super.setCloseWhenDetach(true);       // Closes the module when the user exit.\n        //super.setFocusOnSelectedObject(true); // World objects panel will focus on selected object\n        //super.setRequestSelectedObject(true); // Requires a selected object before opening module\n        //super.setHideEditorTools(true);       // Hide object move/rotate/scale options while in the module\n        //super.setChangeToGameViewWhenPlay(false); // false = Editor does not switch to game view when playing the game\n        //super.setRequestComponentName( \"Component name\" ) // Requires a specific component to be attached on object before opening this module\n\n\n        //// EXTRA CONFIGURATIONS\n        ModuleConfig moduleConfig = new ModuleConfig(); // Creates a new ModuleConfig instance\n\n        //// This creates a button to the Project Files context menu.\n        //// Adding a button for the Texture file format can be opened with this module\n        //// When the user touches the button \"Open with my module\", this module will be called and\n        //// The function \"onOpenFile\" will be called with the texture file\n        //moduleConfig.contextMenus.add(new ContextMenu(FormatDictionaries.TEXTURE, \"Open with my module\"));\n\n        super.setModuleConfigs(moduleConfig); // Set a extra config class in to the module\n\n\n        //// PANEL CONTROLLING\n\n        // DEFAULT PANELS NAME\n        //   WORLD_OBJECTS\n        //   WORLD_SETTINGS\n        //   CREATE_NEW_OBJECT\n        //   PROJECT_FILES\n        //   PROFILER\n        //   OBJECT_PROPERTIES\n        //   CONSOLE\n        //   ANIMATION_EDITOR\n        //   ANIMATION_TIMELINE\n        //   PROJECT_SCRIPTS\n        // !Custom panels are coming soon possible!\n\n        super.addLeftPanel(WORLD_OBJECTS);       // Add a panel to Left panels\n        super.addLeftPanel(PROJECT_FILES);       // Add a panel to Left panels\n        super.addRightPanel(OBJECT_PROPERTIES);  // Add a panel to Right panels\n        super.addBottomPanel(CONSOLE);           // Add a panel to Bottom panels\n    }\n\n    /// Called when the user enter the module\n    public void onStart() {\n        Console.log(\"Victory\");\n\n        //// USEFUL FUNCTIONS\n        //super.detach(); // Force user to exit the module\n        //super.detachAndClose(); // Force user to exit the module, then close it from panel\n        //super.getSelectedObject(); // Returns the selected object  (Editor only)\n        //super.isSelected(); // Returns true when the modules is being used by user  (Editor only)\n        //super.isGameRunning(); // Returns true if the game is running (Editor only)\n        //super.isGameStopped(); // Returns true if the game is stopped (Editor only)\n\n\n        //// ANDROID WIDGETS INFLATION\n        // Android widgets should be inflated inside onStart()\n        // All android widgets are deleted when the user exits the module\n\n        // USABLE WIDGETS\n        // ImageView, LinearLayout, FrameLayout, TextView, Button, ListView, View\n        // Check android documentation about widgets and how to use also\n        // is possible to add event listeners to android widgets\n\n        TextView textView = LayoutInflator.newTextView(); // Creates a new TextView\n        textView.setText(\"@CLASSNAME@ Example text\"); // Set the text\n        super.addView(textView); // Add any widgets to module usable space\n\n\n        //// HOW TO SET A TEXTURE ON A ImageView\n        ImageView imageView = LayoutInflator.newImageView(); // Creates a new ImageView\n        // is necessary to call ITsMagic to do it for you\n        LayoutUtils.setImage(imageView, new PFile(\"TEXTURE ADDRESS\"));\n        super.addView(imageView); // Add any widgets to module usable space\n\n\n        //super.removeView(textView); // Remove any widgets from module space\n        //super.removeView(imageView); // Remove any widgets from module space\n\n\n\n        //// THREAD SYNCHRONIZER\n        // Aways remember, modules are running on Android thread\n        // But the game is running on the engine Thread\n        // So if you want to modify any information from a SpatialObject, or something about the game\n        // Is necessary to call the thread synchronizer to allow you to do it\n\n        super.runOnEngine(new Runnable() {\n            public void run() {\n                /// Execute here everything you want to do on spatial objects, or any game information\n                /// Calling this is expensively, so do has much you can on a single call\n\n                /// Example of what should be called here:\n                /// Object component add/remove\n                /// Object instantiation\n                /// Object child add/remove\n                /// ...\n\n\n                @CLASSNAME@.this.runOnModule(new Runnable() {\n                    public void run() {\n                        //// Sometimes you want to refresh a WIDGET, or any screen information from android\n                        //// And you can not do it inside Engine THREAD, so is necessary to reverse call the thread synchronizer\n                        //// Execute here the module widgets and screen information\n                    }\n                });\n            }\n        });\n\n\n        //// Don\'t worry if you don\'t understand everything here now, just keep going\n        //// If you mess with threads, ITsMagic might CRASH/STOP\n        //// Theres no way to prevent you from blocking threads\n    }\n\n    /// Called when the user exits the module\n    void onStop() {\n        Console.log(\"Bye\");\n    }\n\n    /// Called when a file is opened with the module\n    void onOpenFile(PFile pFile) {\n        Console.log(\"Opening file on @CLASSNAME@ \" + pFile.getFilePath());\n    }\n\n    /// Called when an object is selected while using your module\n    void onObjectSelected(SpatialObject object) {\n        if(object != null){\n            Console.log(object.getName() + \" is selected\");\n        } else {\n            Console.log(\"Nothing selected\");\n        }\n    }\n}"

    goto :goto_1

    :cond_2
    const-string v1, "package JAVARuntime;\n\n// Useful imports\nimport java.util.*;\nimport java.text.*;\nimport java.net.*;\nimport java.math.*;\nimport java.io.*;\nimport java.nio.*;\nimport android.widget.*;\n\n/**\n * @Author \n*/\npublic class @CLASSNAME@ extends Module {\n\n    // Zero-argument constructor required\n    public @CLASSNAME@() {\n        super(\"@CLASSNAME@\"); // Initialize module with the name\n    }\n\n    /// Called when the user enter the module\n    void onStart() {\n        Console.log(\"Victory\");\n    }\n\n    /// Called when the user exits the module\n    void onStop() {\n        Console.log(\"Bye\");\n    }\n\n    /// Called when a file is opened with the module\n    void onOpenFile(PFile pFile) {\n        Console.log(\"Opening file on @CLASSNAME@ \" + pFile.getFilePath());\n    }\n\n    /// Called when an object is selected while using your module\n    void onObjectSelected(SpatialObject object) {\n        \n    }\n}"

    :goto_1
    const-string v4, "@CLASSNAME@"

    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, LIc/o;->e(Ljava/lang/String;Ljava/io/File;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ld8/j;->j(Ljava/io/File;)Lcom/itsmagic/engine/Core/Components/JCompiler/JavaMetaInfo;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lw5/c$a0;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ln4/c;

    invoke-direct {v1, p1}, Ln4/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, LN7/c;->k0(Ln4/f;)V

    iget-object p1, p0, Lw5/c$a0;->f:Lw5/l;

    if-eqz p1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lw5/c$a0;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lw5/l;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :try_start_2
    iget-object p1, p0, Lw5/c$a0;->d:Landroid/content/Context;

    const-string p2, "Please understand, modules still experimental"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_4
    :try_start_3
    iget-object p2, p0, Lw5/c$a0;->d:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lw5/c$a0;->d:Landroid/content/Context;

    new-instance v0, Lbd/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Java Class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already exists or is reserved"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Classe java "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " j\u00e1 existe ou \u00e9 reservada, use outro nome"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_6
    :goto_3
    return-void
.end method
