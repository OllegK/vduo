<template>
  <div class="card text-center">
    <div class="card-header">
      <h3 class="card-title">{{ question }}</h3>
    </div>
    <div class="card-body row">
      <div class="col-6 col-sm-6 col-md-6 text-center" v-for="i in [0, 1, 2, 3]" :key="i">
        <button
          class="btn btn-primary btn-lg"
          style="margin: 10px"
          @click="onAnswer(btnData[i].correct)"
        >{{ btnData[i].answer }}</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      question: '',
      btnData: [
        // {answer: 0, correct: false}
      ],
    };
  },
  methods: {
    rndOp() {
      return this.rnd(0, 1) === 0 ? '+' : '-';
    },
    rnd(min, max, except) {
      const ret = Math.round(Math.random() * (max - min)) + min;
      if (except && except.includes(ret)) {
        return this.rnd(min, max, except);
      }
      return ret;
    },
    generateQuestion() {
      const question = `${this.rnd(1, 100)} ${this.rndOp()} ${this.rnd(1, 100)}`;
      const correctAnswer = eval(question);

      const except = [correctAnswer];
      this.btnData = Array(3)
        .fill()
        .map(() => {
          console.log(except);
          const value = this.rnd(correctAnswer - 10, correctAnswer + 10, except);
          except.push(value);
          return {
            answer: value,
            correct: false,
          };
        });

      this.btnData.splice(this.rnd(0, 3), 0, {
        answer: correctAnswer,
        correct: true,
      });
      this.question = `What's ${question}?`;
    },
    onAnswer(isCorrect) {
      this.$emit('answered', isCorrect);
    },
  },
  created() {
    this.generateQuestion();
  },
};
</script>
