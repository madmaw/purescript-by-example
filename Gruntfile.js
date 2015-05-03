module.exports = function(grunt) {

  "use strict";

  grunt.initConfig({

    srcFiles: ["src/**/*.purs", "bower_components/**/src/**/*.purs"],
    c4e1out: "dist/c4e1.js",
    c4e2out: "dist/c4e2.js",
    c4e3out: "dist/c4e3.js",
    c4e4out: "dist/c4e4.js",
    c4e5out: "dist/c4e5.js",
    c4e6out: "dist/c4e6.js",
    c4e7out: "dist/c4e7.js",
    c4e8out: "dist/c4e8.js",
    c4e9out: "dist/c4e9.js",
    c4e10out: "dist/c4e10.js",
    c4e11out: "dist/c4e11.js",
    c4e13out: "dist/c4e13.js",
    c4e14out: "dist/c4e14.js",
    c4e15out: "dist/c4e15.js",
    c5e1out: "dist/c5e1.js",
    c5e3out: "dist/c5e3.js",
    c5e4out: "dist/c5e4.js",
    c5e6out: "dist/c5e6.js",
    c5e8out: "dist/c5e8.js",
    c5e9out: "dist/c5e9.js",
    c6e2out: "dist/c6e2.js",
    c6e3out: "dist/c6e3.js",
    c6e4out: "dist/c6e4.js",
    c6e5out: "dist/c6e5.js",
    c6e7out: "dist/c6e7.js",
    c6e8out: "dist/c6e8.js",
    c6e10out: "dist/c6e10.js",
    c6e11out: "dist/c6e11.js",
    c6e12out: "dist/c6e12.js",
    c6e14out: "dist/c6e14.js",
    c6e15out: "dist/c6e15.js",

    psc: {
      helloworld: {
        options: {
          main: "HelloWorld",
          modules: ["HelloWorld"]
        },
        src: ["<%=srcFiles%>"],
        dest: "dist/out.js"
      },
      c4e1: {
        options: {
          main: "Chapter4.Exercise1",
          modules: ["Chapter4.Exercise1"]
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e1out%>"
      },
      c4e2: {
        options: {
          main: "Chapter4.Exercise2",
          modules: ["Chapter4.Exercise2"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e2out%>"
      },
      c4e3: {
        options: {
          main: "Chapter4.Exercise3",
          modules: ["Chapter4.Exercise3"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e3out%>"
      },
      c4e4: {
        options: {
          main: "Chapter4.Exercise4",
          modules: ["Chapter4.Exercise4"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e4out%>"
      },
      c4e5: {
        options: {
          main: "Chapter4.Exercise5",
          modules: ["Chapter4.Exercise5"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e5out%>"
      },
      c4e6: {
        options: {
          main: "Chapter4.Exercise6",
          modules: ["Chapter4.Exercise6", "Chapter4.Factor"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e6out%>"
      },
      c4e7: {
        options: {
          main: "Chapter4.Exercise7",
          modules: ["Chapter4.Exercise7"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e7out%>"
      },
      c4e8: {
        options: {
          main: "Chapter4.Exercise8",
          modules: ["Chapter4.Exercise8"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e8out%>"
      },
      c4e9: {
        options: {
          main: "Chapter4.Exercise9",
          modules: ["Chapter4.Exercise9"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e9out%>"
      },
      c4e10: {
        options: {
          main: "Chapter4.Exercise10",
          modules: ["Chapter4.Exercise10", "Chapter4.Factor"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e10out%>"
      },
      c4e11: {
        options: {
          main: "Chapter4.Exercise11",
          modules: ["Chapter4.Exercise11"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e11out%>"
      },
      c4e13: {
        options: {
          main: "Chapter4.Exercise13",
          modules: ["Chapter4.Exercise13"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e13out%>"
      },
      c4e14: {
        options: {
          main: "Chapter4.Exercise14",
          modules: ["Chapter4.Exercise14"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e14out%>"
      },
      c4e15: {
        options: {
          main: "Chapter4.Exercise15",
          modules: ["Chapter4.Exercise15"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c4e15out%>"
      },
      c5e1: {
        options: {
          main: "Chapter5.Exercise1",
          modules: ["Chapter5.Exercise1"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c5e1out%>"
      },
      c5e3: {
        options: {
          main: "Chapter5.Exercise3",
          modules: ["Chapter5.Exercise3"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c5e3out%>"
      },
      c5e4: {
        options: {
          main: "Chapter5.Exercise4",
          modules: ["Chapter5.Exercise4"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c5e4out%>"
      },
      c5e6: {
        options: {
          main: "Chapter5.Exercise6",
          modules: ["Chapter5.Exercise6"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c5e6out%>"
      },
      c5e8: {
        options: {
          main: "Chapter5.Exercise8",
          modules: ["Chapter5.Exercise8", "Chapter5.Shape"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c5e8out%>"
      },
      c5e9: {
        options: {
          main: "Chapter5.Exercise9",
          modules: ["Chapter5.Exercise9", "Chapter5.Shape"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c5e9out%>"
      },
      c6e2: {
        options: {
          main: "Chapter6.Exercise2",
          modules: ["Chapter6.Exercise2"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e2out%>"
      },
      c6e3: {
        options: {
          main: "Chapter6.Exercise3",
          modules: ["Chapter6.Exercise3", "Chapter6.NonEmpty"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e3out%>"
      },
      c6e4: {
        options: {
          main: "Chapter6.Exercise4",
          modules: ["Chapter6.Exercise4", "Chapter6.NonEmpty"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e4out%>"
      },
      c6e5: {
        options: {
          main: "Chapter6.Exercise5",
          modules: ["Chapter6.Exercise5", "Chapter6.NonEmpty"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e5out%>"
      },
      c6e7: {
        options: {
          main: "Chapter6.Exercise7",
          modules: ["Chapter6.Exercise7"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e7out%>"
      },
      c6e8: {
        options: {
          main: "Chapter6.Exercise8",
          modules: ["Chapter6.Exercise8"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e8out%>"
      },
      c6e10: {
        options: {
          main: "Chapter6.Exercise10",
          modules: ["Chapter6.Exercise10"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e10out%>"
      },
      c6e11: {
        options: {
          main: "Chapter6.Exercise11",
          modules: ["Chapter6.Exercise11"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e11out%>"
      },
      c6e12: {
        options: {
          main: "Chapter6.Exercise12",
          modules: ["Chapter6.Exercise12"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e12out%>"
      },
      c6e14: {
        options: {
          main: "Chapter6.Exercise14",
          modules: ["Chapter6.Exercise14", "Chapter6.HashCode"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e14out%>"
      },
      c6e15: {
        options: {
          main: "Chapter6.Exercise15",
          modules: ["Chapter6.Exercise15", "Chapter6.HashCode"]          
        },
        src: ["<%=srcFiles%>"],
        dest: "<%=c6e15out%>"
      }
    },

    execute: {
      c4e1: {
          src: "<%=c4e1out%>"
      },
      c4e2: {
          src: "<%=c4e2out%>"
      },
      c4e3: {
          src: "<%=c4e3out%>"
      },
      c4e4: {
          src: "<%=c4e4out%>"
      },
      c4e5: {
          src: "<%=c4e5out%>"
      },
      c4e6: {
          src: "<%=c4e6out%>"
      },
      c4e7: {
          src: "<%=c4e7out%>"
      },
      c4e8: {
          src: "<%=c4e8out%>"
      },
      c4e9: {
          src: "<%=c4e9out%>"
      },
      c4e10: {
          src: "<%=c4e10out%>"
      },
      c4e11: {
          src: "<%=c4e11out%>"
      },
      c4e13: {
          src: "<%=c4e13out%>"
      },
      c4e14: {
          src: "<%=c4e14out%>"
      },
      c4e15: {
          src: "<%=c4e15out%>"
      },
      c5e1: {
          src: "<%=c5e1out%>"
      },
      c5e3: {
          src: "<%=c5e3out%>"
      },
      c5e4: {
          src: "<%=c5e4out%>"
      },
      c5e6: {
          src: "<%=c5e6out%>"
      },
      c5e8: {
          src: "<%=c5e8out%>"
      },
      85e9: {
          src: "<%=c5e9out%>"
      },
      c6e2: {
          src: "<%=c6e2out%>"
      },
      c6e3: {
          src: "<%=c6e3out%>"
      },
      c6e4: {
          src: "<%=c6e4out%>"
      },
      c6e5: {
          src: "<%=c6e5out%>"
      },
      c6e7: {
          src: "<%=c6e7out%>"
      },
      c6e8: {
          src: "<%=c6e8out%>"
      },
      c6e10: {
          src: "<%=c6e10out%>"
      },
      c6e11: {
          src: "<%=c6e11out%>"
      },
      c6e12: {
          src: "<%=c6e12out%>"
      },
      c6e14: {
          src: "<%=c6e14out%>"
      },
      c6e15: {
          src: "<%=c6e15out%>"
      }
    }

  });

  grunt.loadNpmTasks("grunt-purescript");
  grunt.loadNpmTasks("grunt-execute");
  
  grunt.registerTask("default", ["psc"]);
  grunt.registerTask('c4e1', ['psc:c4e1', 'execute:c4e1']);
  grunt.registerTask('c4e2', ['psc:c4e2', 'execute:c4e2']);
  grunt.registerTask('c4e3', ['psc:c4e3', 'execute:c4e3']);
  grunt.registerTask('c4e4', ['psc:c4e4', 'execute:c4e4']);
  grunt.registerTask('c4e5', ['psc:c4e5', 'execute:c4e5']);
  grunt.registerTask('c4e6', ['psc:c4e6', 'execute:c4e6']);
  grunt.registerTask('c4e7', ['psc:c4e7', 'execute:c4e7']);
  grunt.registerTask('c4e8', ['psc:c4e8', 'execute:c4e8']);
  grunt.registerTask('c4e9', ['psc:c4e9', 'execute:c4e9']);
  grunt.registerTask('c4e10', ['psc:c4e10', 'execute:c4e10']);
  grunt.registerTask('c4e11', ['psc:c4e11', 'execute:c4e11']);
  grunt.registerTask('c4e13', ['psc:c4e13', 'execute:c4e13']);
  grunt.registerTask('c4e14', ['psc:c4e14', 'execute:c4e14']);
  grunt.registerTask('c4e15', ['psc:c4e15', 'execute:c4e15']);
  grunt.registerTask('c5e1', ['psc:c5e1', 'execute:c5e1']);
  grunt.registerTask('c5e3', ['psc:c5e3', 'execute:c5e3']);
  grunt.registerTask('c5e4', ['psc:c5e4', 'execute:c5e4']);
  grunt.registerTask('c5e6', ['psc:c5e6', 'execute:c5e6']);
  grunt.registerTask('c5e8', ['psc:c5e8', 'execute:c5e8']);
  grunt.registerTask('c5e9', ['psc:c5e9', 'execute:c5e9']);
  grunt.registerTask('c6e2', ['psc:c6e2', 'execute:c6e2']);
  grunt.registerTask('c6e3', ['psc:c6e3', 'execute:c6e3']);
  grunt.registerTask('c6e4', ['psc:c6e4', 'execute:c6e4']);
  grunt.registerTask('c6e5', ['psc:c6e5', 'execute:c6e5']);
  grunt.registerTask('c6e7', ['psc:c6e7', 'execute:c6e7']);
  grunt.registerTask('c6e8', ['psc:c6e8', 'execute:c6e8']);
  grunt.registerTask('c6e10', ['psc:c6e10', 'execute:c6e10']);
  grunt.registerTask('c6e11', ['psc:c6e11', 'execute:c6e11']);
  grunt.registerTask('c6e12', ['psc:c6e12', 'execute:c6e12']);
  grunt.registerTask('c6e14', ['psc:c6e14', 'execute:c6e14']);
  grunt.registerTask('c6e15', ['psc:c6e15', 'execute:c6e15']);

};