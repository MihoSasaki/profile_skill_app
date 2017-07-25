var React = require("react")
var SkillTagBox = React.createClass({

  render: function() {
    return(
        <div className="skillTagBox">
          Hello, world! I am conponent
            <SkillTagList />
        </div>);
  }
});
var SkillTagList = React.createClass({
    render: function () {
        return(
            <div className="skillTagList">
                Hello, world! I am conponent skill tag list
            </div>
        )
    }
})
module.exports = SkillTagBox
